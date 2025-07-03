## Description
This PWA prototype integrates the HowLongToBeatAPI with the Steam API to gather interesting information about the games a user has on their steam profile.

It gathers the information from HowLongToBeat and compares it with the information gathered from the SteamAPI when given a users SteamID.

Due to the scope of the project, many ideas that I wanted to implement had to be cut out. Some of these include a search function, a specific settings for completion via achievements, live functionality and a functional backlog system.

# Installation

Firstly, you need to follow the steps in the HowLongToBeat API's README.md to download the required packages, this would include running this command in terminal:

pip install howlongtobeatpy

And then you need to run in terminal to download flask:

pip install flask

## How to Use

To run the code, use the VSCode addon to run the python program 'app.py'.

Or you can run in terminal '''/workspaces/software-assessment-3 (main) $''':

python app.py

# Using the PWA

Firstly you need to ctrl + click on the link shown in terminal, usually a variation of http://127...

This will open the PWA and then allow for usage of the website.

Registration page only currently works with the steam ids of 76561198967236244 and 76561198260317680, and time outs may occur due to async limits.

# License Information

This project is under an MIT open source license, meaning that you can freely use, modify and redistribute this software.

# Author details

I am a Year 12 student working on this for my major project. This is for the HSC subject Software engineering.

## Credits

ScrappyCoco (https://github.com/ScrappyCocco) - Compiling of information from HowLongToBeat into a Python API 

Valve Corporation / Valve Developer Community (https://developer.valvesoftware.com/wiki/Main_Page) - Information about user's games via Steam Web API
