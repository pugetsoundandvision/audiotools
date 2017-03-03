#!/usr/bin/env bash

INPUTDIR="${1}"
HASHDIGEST=$(mktemp /tmp/hash.XXXXXXXXXX)
find "${INPUTDIR}" -name '*.md5' -exec cat {} + > "${HASHDIGEST}"
HASHCOUNT=$(find "${INPUTDIR}" -name '*.md5' | wc -l| tr -d " ")
if [ -n "${HASHCOUNT}" ] ; then
    WAVCOUNT=$(find "${INPUTDIR}" -name '*.wav' | wc -l| tr -d " ")
    echo "A total number of ${WAVCOUNT} WAVE files and ${HASHCOUNT} MD5s were found."
    echo "Comparing checksums"
    MISMATCHES=$(md5deep -e -r -x "${HASHDIGEST}" "${INPUTDIR}" | grep .wav)
    if [ -n "${MISMATCHES}" ] ; then
        echo "The following files either had a fixity mismatch or had no fixity information. A list has been created on the desktop."
        echo "${MISMATCHES}"
        echo "${MISMATCHES}" > ~/Desktop/$(basename "${INPUTDIR}")_FixityCheck.txt
    fi
else 
    echo "No MD5 files were found" && exit 1
fi
