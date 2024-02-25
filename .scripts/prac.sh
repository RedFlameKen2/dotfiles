#!/bin/bash

while getopts 'fuck:ab' flag; do
	case "${flag}" in 
		a)
			echo "printing a"
			;;
		b)
			echo "printing b"
			;;
		fuck)
			echo "weird"
			;;
		*)
			echo wildcard
			exit 1
			;;
	esac
done

