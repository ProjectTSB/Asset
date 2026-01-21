#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/homing.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick

# 追尾
    $execute facing entity @p[gamemode=!spectator,scores={UserID=$(TargetID)}] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# モデルの向き
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] ~ ~ ~ ~ ~
