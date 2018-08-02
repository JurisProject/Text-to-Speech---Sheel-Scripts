#!/bin/bash
gcloud auth login \
&& \
gcloud auth activate-service-account --key-file=./credentials.json