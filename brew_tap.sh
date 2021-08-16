#!/bin/bash
brew tap heroku/brew && brew install heroku
brew tap homebrew/core dunn/emacs denji/nginx osx-cross/avr
brew tap minio/stable
brew tap acrogenesis/homebrew-macchanger
brew tap PrivacySolutions/homebrew-i2p 
brew tap gphotosuploader/tap
brew tap open-arsenal/hackers-brew
brew install gphotosuploader/homebrew-tap/gphotos-uploader-cli
brew install tabterm/taps/tabterm
brew install acrogenesis/homebrew-macchanger/macchanger
brew install i2p
brew install minio/stable/minio
brew install minio/stable/mc
brew tap choppsv1/term24
brew install choppsv1/term24/emacs
brew install choppsv1/term24/vim
brew install choppsv1/term24/tmux
brew install choppsv1/term24/emacs-mac
brew tap busterc/tap
brew install osx-iso
brew tap blacktop/tap
brew install lporg
brew install parallel
brew tap chiayolin/cask
brew tap david-icracked/homebrew-websocketpp
brew install websocketpp
brew install --HEAD david-icracked/websocketpp/websocketpp
brew tap david-icracked/idevicerestore
brew install --HEAD david-icracked/idevicerestore/idevicerestore
brew tap sidaf/homebrew-pentest
brew tap stek29/homebrew-idevice
IFS=$'\n'; for package in $(brew search pentest); do brew install $package; done
IFS=$'\n'; for package in $(brew search homebrew-idevice); do brew install $package; done
brew tap Homebrew/homebrew-services
brew install Homebrew/homebrew-services
brew tap homebrew/aliases
brew tap homebrew/command-not-found
brew install homebrew/aliases
brew install homebrew/command-not-found
brew tap b-ramsey/homebrew-kali
IFS=$'\n'; for package in $(brew search homebrew-kali); do brew install $package; done
brew tap varenc/ffmpeg
brew install varenc/ffmpeg/ffmpeg
brew tap mtigas/tor
brew install mtigas/tor/tor
brew tap kolen/homebrew-gnuradio
brew tap infection/homebrew-infection
brew install infection
brew tap decors/cipherscan
brew install --HEAD cipherscan
brew tap gsong2014/homebrew-sdr
brew install gnuradio
brew install librtlsdr
brew install bladerf --HEAD
brew install gr-osmosdr gr-baz --HEAD
brew install gqrx
brew install libosmocore --HEAD
brew install gr-gsm --HEAD
brew install nlohmann-json pygtk
pip2 install six
brew install pygobject3 gtk+3
brew install -d -v --build-from-source --with-python2 soapysdr
brew install -d -v --build-from-source --with-images limesuite
brew install -d -v --build-from-source --HEAD gsong2014/sdr/volk
brew install -d -v --build-from-source --HEAD gsong2014/sdr/pothos-lime
brew install -d -v --build-from-source --HEAD gsong2014/sdr/gnuradio
brew install -d -v --build-from-source librtlsdr
brew install -d -v --build-from-source --HEAD gsong2014/sdr/gr-fcdproplus
brew install -d -v --build-from-source --HEAD gsong2014/sdr/gr-osmosdr
brew install -d -v --build-from-source gsong2014/sdr/gr-limesdr
export GRC_BLOCKS_PATH=$(ls -d /usr/local/opt/*/share/gnuradio/grc/blocks | tr '$\n' :)
brew tap gsong2014/homebrew-sdr
brew tap niobos/homebrew-sdr
IFS=$'\n'; for package in $(brew search homebrew-sdr); do brew install $package; done

for install in `pip search google cloud sdk | awk '{print $1}'`; do pip install $install; done
npm install -g @rafaelrinaldi/whereami
npm install -g ipa-deploy
