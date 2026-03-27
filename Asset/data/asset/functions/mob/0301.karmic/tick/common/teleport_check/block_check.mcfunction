#> asset:mob/0301.karmic/tick/common/teleport_check/block_check
#
#
#
# @within function
#   asset:mob/0301.karmic/tick/common/teleport_check/main
#   asset:mob/0301.karmic/tick/common/teleport_check/block_check

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0,dy=0,dz=0] run tag @s add TeleportCheck
execute unless entity @s[tag=TeleportCheck] positioned ^ ^ ^0.15 if entity @s[distance=..15] if block ~ ~ ~ #lib:no_collision run function asset:mob/0301.karmic/tick/common/teleport_check/block_check
