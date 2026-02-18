#> asset:object/2044.lastboss_ice_bullet/tick/homing.m
#
# プレイヤーの方を向く
#
# @within function asset:object/2044.lastboss_ice_bullet/tick/

# 追尾
    $execute facing entity @p[gamemode=!spectator,scores={UserID=$(TargetID)}] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
