#> asset:object/1052.maid/tick/shot/loop
#
#
#
# @within function
#   asset:object/1052.maid/tick/shot/main
#   asset:object/1052.maid/tick/shot/loop


# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle minecraft:dust 0.122 0.122 0.122 0.7 ~ ~ ~ 0 0 0 0 0

# 着弾
    execute if entity @s[tag=Landing] run function asset:object/1052.maid/tick/shot/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:object/1052.maid/tick/shot/loop
