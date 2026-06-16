#!/bin/bash
py -3.12 -m venv .venv
source .venv/Scripts/activate

python -m pip install --upgrade pip
pip install openai-whisper

whisper "C:\Users\owner\Videos\Captures\(56) Race-Baiter Elon Musk Becomes World’s First Trillionaire - YouTube - Google Chrome 2026-06-13 01-53-13.mp4" --model small --language English --output_format txt
