#> asset:artifact/1076.utu_rundeath/trigger/shot
#
#
#
# @within function
#       asset:artifact/1076.utu_rundeath/trigger/3.main
#       asset:artifact/1076.utu_rundeath/trigger/shot

# 最大までヒットしたら発動しない
    execute if score $TW.Count Temporary matches 0 run return fail
# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=this,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=this,dx=0] unless score $TW.Count Temporary matches 0 run function asset:artifact/1076.utu_rundeath/trigger/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..50] run function asset:artifact/1076.utu_rundeath/trigger/shot
