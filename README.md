# WolfOS
A program that tries to emulate the feel of a modern operating system on computercraft computers.

## Changelog (101):
- Fixed all scripts that use `wget`

## Setup:
### Step 1: Installer
Run this command: `wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/Install.lua` (you might need to add `./Install.lua`) to the end on 1.12 and below

Then, start it by typing `Install`

You are done!

### Step 2 (optional): Boot to bootloader
First, create the file startup.lua in the root directory (unless it's already there
Next, edit the file and add the text `shell.run("/WolfOS/Bootloader.lua")`
You are done!
