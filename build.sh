#!/bin/sh

smcc \
    addons/sourcemod/scripting/sticky_delay_fix.sp \
    -o addons/sourcemod/plugins/sticky_delay_fix.smx

zip -r sticky-delay-fix-0.1.0.zip addons/
