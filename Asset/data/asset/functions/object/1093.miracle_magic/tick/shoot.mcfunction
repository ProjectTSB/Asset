#> asset:object/1093.miracle_magic/tick/shoot
#
#
#
# @within function
#   asset:object/1093.miracle_magic/tick/
#   asset:object/1093.miracle_magic/tick/shoot

# 着弾検知
    execute if entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2,limit=1] add LandingTarget

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 12
    particle enchant ~ ~ ~ 0.4 0.4 0.4 0 5

# 着弾
    execute if entity @s[tag=Landing] run function asset:object/1093.miracle_magic/tick/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:object/1093.miracle_magic/tick/shoot
