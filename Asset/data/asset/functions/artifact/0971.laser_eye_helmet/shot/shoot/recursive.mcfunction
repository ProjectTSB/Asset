#> asset:artifact/0971.laser_eye_helmet/shot/shoot/recursive
#
# ビーム部
#
# @within function
#    asset:artifact/0971.laser_eye_helmet/shot/shoot/
#    asset:artifact/0971.laser_eye_helmet/shot/shoot/recursive

# ここから先は神器側の効果の処理を書く

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    execute if predicate lib:random_pass_per/10 run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 1
    execute if predicate lib:random_pass_per/10 run particle minecraft:dust 0.075 0.604 0.063 0.35 ~ ~ ~ 0 0 0 0 0

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0971.laser_eye_helmet/shot/shoot/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..15] run function asset:artifact/0971.laser_eye_helmet/shot/shoot/recursive
