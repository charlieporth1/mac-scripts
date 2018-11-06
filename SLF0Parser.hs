{-# LANGUAGE OverloadedStrings #-}
{-|

Tokenizer for SLF0 serialization format, used by Xcode to, at the very least,
encode some log files.

For example, `.xcactivitylog` logs are gzipped files of this format, 
serializing some objc classes which represent the build log.

This class tokenizes the raw byte stream into a flat list of tokens. The actual
object hierarchy is dictated by additional information supplied elsewhere (such
as the encode/decode function of classes themselves).

-}
module SLF0Parser
( 
Tok(..),
pSLF0,
debugParse,
) where

import qualified Data.Attoparsec.ByteString.Char8 as A (decimal, char, hexadecimal)
import qualified Data.Attoparsec.ByteString.Lazy as A
import qualified Data.ByteString.Char8 as BS
import qualified Data.ByteString.Lazy.Char8 as BSL
import Control.Applicative
import Data.Binary.IEEE754 (wordToDouble)
import Data.Bits
import Data.Word (Word64)

-- | Utility for reversing byte order.
byteSwap64 :: Word64 -> Word64
byteSwap64 w = foldr1 (.|.) 
  [ (w .&. 0xFF00000000000000) `shift` (-7 * 8)
  , (w .&. 0x00FF000000000000) `shift` (-5 * 8)
  , (w .&. 0x0000FF0000000000) `shift` (-3 * 8)
  , (w .&. 0x000000FF00000000) `shift` (-1 * 8)
  , (w .&. 0x00000000FF000000) `shift` ( 1 * 8)
  , (w .&. 0x0000000000FF0000) `shift` ( 3 * 8)
  , (w .&. 0x000000000000FF00) `shift` ( 5 * 8)
  , (w .&. 0x00000000000000FF) `shift` ( 7 * 8)
  ]

-- | Raw tokens for SLF0 serializer
data Tok 
  -- | Start of an object. 
  -- The class itself controls how the following fields are interpreted.
  = TokClassName BS.ByteString
  -- | Start of an object. 
  -- The class name is the nth seen TokClassName since the beginning of file.
  | TokClassNameRef Int
  -- | Object list with a length(?) argument.
  | TokObjectList Int
  -- | Nil object list.
  | TokObjectListNil
  | TokInt Int
  | TokString BS.ByteString
  | TokDouble Double
  deriving (Show)

-- | Parse the raw log into tokens
pSLF0 = pHeader *> pBody
  where
  pHeader = A.string "SLF0"
  pBody = A.many' (pField <|> pDoubleField <|> pObjectListNil)
  pField = do
    int <- A.decimal
    A.choice
      [ A.char '#' *> pure (TokInt int)
      , A.char '%' *> (TokClassName <$> A.take int)
      , A.char '@' *> pure (TokClassNameRef int)
      , A.char '"' *> (TokString <$> A.take int)
      , A.char '(' *> pure (TokObjectList int)
      ]
  pDoubleField = (TokDouble . wordToDouble . byteSwap64) <$> (A.hexadecimal <* A.char '^')
  pObjectListNil = A.char '-' *> pure TokObjectListNil


-- | Debug function to dump the input
debugParse s = 
  case A.parse pSLF0 s of
    A.Fail rest ctx msg -> error $ show (msg, ctx)
    A.Done rest v -> do
      putStrLn "Done"
      BSL.putStrLn ("Unconsumed: " `BSL.append` BSL.take 100 rest)
      mapM_ print v
