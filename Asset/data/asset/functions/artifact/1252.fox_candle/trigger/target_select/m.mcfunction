#> asset:artifact/1252.fox_candle/trigger/target_select/m
#
# 直接Tagを付与する
#
# @within function asset:artifact/1252.fox_candle/trigger/3.main

#
    $tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..16,sort=random,limit=$(Count)] add YS.Target
