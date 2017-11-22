# Sticky Delay Bug Fix

http://www.teamfortress.tv/34938/demoman-detonation-delay

- Download latest release from https://github.com/ldesgoui/tf2-sticky-delay-fix/releases to `steam/steamapps/common/Team Fortress 2 Dedicated Server/tf` and unzip it.

## Updating

An update might break how the plugin interacts with the game, in this case:

- Open https://asherkin.github.io/vtable/ with Firefox
- Pick TF2 Server
- Search for SecondaryAttack
- Pick any (it should be fine)
- Modify tf/addons/sourcemod/SecondaryAttack.txt, change the "windows" value with the W number and the "linux" value with the L number
- Optionally, tell me to update it
