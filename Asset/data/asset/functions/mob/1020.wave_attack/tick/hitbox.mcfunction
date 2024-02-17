#> asset:mob/1020.wave_attack/tick/hitbox
#
#
#
# @within function asset:mob/1020.wave_attack/tick/2.tick


tag @s add SC.PlayerTemp
execute as @e[tag=SC.EntityTemp,limit=1] at @s positioned ~-5 ~-0.5 ~-5 if entity @p[tag=SC.PlayerTemp,dx=10,dy=0,dz=10,limit=1] at @s positioned ^ ^ ^0.9 facing entity @p[tag=SC.PlayerTemp,limit=1] feet positioned as @s positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^4 if entity @s[distance=..5] at @s positioned ^ ^ ^-0.9 facing entity @p[tag=SC.PlayerTemp,limit=1] feet positioned as @s positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^-4 if entity @s[distance=..5] at @s positioned ^5.4 ^ ^ facing entity @p[tag=SC.PlayerTemp,limit=1] feet positioned as @s positioned ^ ^ ^3 rotated as @s positioned ^4 ^ ^ if entity @s[distance=..5] at @s positioned ^-5.4 ^ ^ facing entity @p[tag=SC.PlayerTemp,limit=1] feet positioned as @s positioned ^ ^ ^3 rotated as @s positioned ^-4 ^ ^ if entity @s[distance=..5] run effect give @p minecraft:glowing 1 0 true
tag @s remove SC.PlayerTemp