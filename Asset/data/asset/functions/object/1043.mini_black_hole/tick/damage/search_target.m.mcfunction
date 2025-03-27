#> asset:object/1043.mini_black_hole/tick/damage/search_target.m
#
# @input args
#   Num : モブの距離
# @within function asset:object/1043.mini_black_hole/tick/damage/

# 着弾タグを付ける
    $tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..$(Num)] add 1043.Target
