#> asset:object/2218.karmic_conviction_shot/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2218/init

# vfx
    particle minecraft:soul ~ ~ ~ 0 0 0 0.05 20 normal

    tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..20]

# super.init
    function asset:object/super.init
