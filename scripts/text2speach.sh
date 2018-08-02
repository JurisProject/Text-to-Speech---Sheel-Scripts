#!/bin/bash

TEXT=$1

curl -H "Authorization: Bearer "$(gcloud auth print-access-token) \
  -H "Content-Type: application/json; charset=utf-8" \
  --data "{
    'input':{
      'text': '$(<$TEXT)'
    },
    'voice':{
      'languageCode':'en-US',
      'name':'en-US-Wavenet-D'
    },
    'audioConfig':{
      'audioEncoding':'MP3',
      'speakingRate':'0.80'
    }
  }" "https://texttospeech.googleapis.com/v1beta1/text:synthesize" > synth-text.json \
  && \
  jq .audioContent synth-text.json > synth-audio.txt -r \
  && \
  base64 synth-audio.txt --decode > "$TEXT.mp3"