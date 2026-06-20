#!/bin/bash

# Remove the broken venv
rm -rf .venv

# Recreate it
py -3.12 -m venv .venv

# Activate it
source .venv/Scripts/activate

# Repair/upgrade pip
python -m ensurepip --upgrade
python -m pip install --upgrade pip setuptools wheel
python -m pip install faster-whisper

whisper "C:\Users\owner\Videos\Captures\(111) Trump The Peacemaker - YouTube - Google Chrome 2026-06-19 23-09-59.mp4" --model small --language English --output_format txt
