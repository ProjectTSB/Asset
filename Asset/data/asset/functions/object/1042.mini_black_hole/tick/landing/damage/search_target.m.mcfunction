#> asset:object/1042.mini_black_hole/tick/landing/damage/search_target.m
#
# @input args
#   Num : モブの距離
# @within function asset:object/1042.mini_black_hole/tick/landing/damage/

# 着弾タグを付ける
    $tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..$(Num)] add 1042.Target
