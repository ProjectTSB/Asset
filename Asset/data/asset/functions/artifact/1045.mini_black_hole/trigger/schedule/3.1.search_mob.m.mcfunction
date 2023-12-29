#> asset:artifact/1045.mini_black_hole/trigger/schedule/3.1.search_mob.m
#
# ダメージ処理
#
# @input args
#   Num : モブの距離
# @within function asset:artifact/1045.mini_black_hole/trigger/schedule/3.landing
    #declare tag T1.Landing

# 着弾タグを付ける
$tag @e[tag=Enemy,tag=!Uninterferable,distance=..$(Num)] add T1.Landing