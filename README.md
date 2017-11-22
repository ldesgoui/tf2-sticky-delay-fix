# Sticky Delay Bug Fix

http://www.teamfortress.tv/34938/demoman-detonation-delay

## TEMPORARY

I can't get GameData to work so this will only work for Linux servers.

## Usage

- Put .smx file in tf/addons/sourcemod/plugins
- Put .txt file in tf/addons/sourcemod/gamedata

## Update

An update might break how the plugin interacts with the game, in this case:

- Open https://asherkin.github.io/vtable/ with Firefox
- Pick TF2 Server
- Search for SecondaryAttack
- Pick any (it should be fine)
- Modify tf/addons/sourcemod/SecondaryAttack.txt, change the "windows" value with the W number and the "linux" value with the L number
- Optionally, tell me to update it
