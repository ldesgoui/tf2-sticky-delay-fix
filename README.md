# Sticky Delay Bug Fix

## Usage

Put .smx file in tf/addons/sourcemod/plugins
If server is hosted by Windows or if an update broke the plugin, put .txt file in tf/addons/sourcemod/gamedata

## Update

An update might break how the plugin interacts with the game, in this case:

- Open https://asherkin.github.io/vtable/
- Pick TF2 Server
- Search for SecondaryAttack
- Pick any (it should be fine)
- Modify tf/addons/sourcemod/SecondaryAttack.txt, change the "windows" value with the W number and the "linux" value with the L number
- Optionally, tell me to update it
