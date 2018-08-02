# Text to Speech Shell Script

This script will convert a .txt file into an .mp3 file read by Google's Text-to-Speech API

## Installation

For this script to work, you must have th following tools isntalled:

- [Google Cloud SDK](https://cloud.google.com/sdk/docs/downloads-versioned-archives)
- [FFMPEG](https://www.ffmpeg.org/download.html)

## Connecting to your Google Cloud Account

You will need to have an active Google Cloud Account with the Text-to-Speech API enabled and an appropriate Service Account Key. You can set this up per [these instructions](https://cloud.google.com/text-to-speech/docs/quickstart-protocol).

Save the `.json` file of your credentials to the root of this directory with the name `credentials.json`.

Once you have added your credentials file, you can connect to your Google Cloud account by running:

```
$ sh connect.sh
```

The script will kick you to your default browser. Choose the Google Account affiliated with your Google Cloud. The script will then connect to your account.

## Creating an MP3

Running the following command will allow you to convert a text file into an mp3 file in the `./output` folder:

```
$ sh mp3.sh [Path to .txt file] [Desired .mp3 filename]
```
