#> asset:object/1103.light_ball/tick/track.m
#
#
#
# @within function asset:object/1103.light_ball/tick/

$execute as @e[type=#lib:living,type=!player,tag=!Death,tag=!Uninterferable,scores={MobUUID=$(TargetID)},distance=..50,limit=1] at @s anchored eyes run return run tp @e[type=item_display,tag=this,limit=1] ^ ^ ^
kill @s
