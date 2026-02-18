#> asset:object/2045.lastboss_hell_fire/tick/homing.m
#
#
#
# @within function asset:object/2045.lastboss_hell_fire/tick/

# 追尾
    $execute facing entity @p[gamemode=!spectator,scores={UserID=$(TargetID)}] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-2 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
