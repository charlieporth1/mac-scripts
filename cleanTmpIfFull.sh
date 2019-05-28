#!/bin/bash
#export perD=$(df | grep "/Users/charlieporth/Library/Developer/Xcode/DerivedData" | awk '{print $5}' | cut -d "%" -f 1)
#export perA=$(df | grep "/Users/charlieporth/Library/Developer/Xcode/Archives" | awk '{print $5}' | cut -d "%" -f 1)
#export perRAM=$(df | grep "/Users/charlieporth/ramdisk" | awk '{print $5}' | cut -d "%" -f 1)
export  perFull=85
#if [[ $per > $perFull ]]; then
	echo "cleanning"
#	 rm -rf /tmp/*
	echo "done"
else 
	echo "limit $perFull; not at percent its at $per; "
fi
#if [[ $perD > $perFull ]]; then
#	echo "cleanning"
#	rm -rf /Users/charlieporth/Library/Developer/Xcode/DerivedData/*
#	echo "done"
#else 
#	echo "limit $perFull; not at percent its at $per; "
#fi
#if [[ $perA > $perFull ]]; then
#	echo "cleanning"
#	rm -rf /Users/charlieporth/Library/Developer/Xcode/Archives/*
#	echo "done"
#else 
#	echo "limit $perFull; not at percent its at $per; "
#fi

