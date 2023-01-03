#!/bin/bash

# Update package list and install dependencies
sudo apt-get update
sudo apt-get install python3 python3-pip libffi-dev libssl-dev python3-openssl

# Add the FFmpeg 4.x PPA and install FFmpeg
sudo add-apt-repository ppa:jonathonf/ffmpeg-4
sudo apt-get update
sudo apt-get install ffmpeg

# Clone the Whisper repository from GitHub
git clone https://github.com/openai/whisper.git

# Change into the Whisper directory
cd whisper

# Install the dependencies for Whisper using pip
pip3 install -r requirements.txt

# Install Whisper itself using pip
pip3 install .
