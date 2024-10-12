#> asset:object/2044.lastboss_ice_bullet/tick/homing.m
#
# プレイヤーの方を向く
#
# @within function asset:object/2044.lastboss_ice_bullet/tick/

# 追尾
    $execute facing entity @p[scores={UserID=$(TargetID)}] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
