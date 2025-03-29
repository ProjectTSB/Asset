#> asset:artifact/1253.deteriorated_sheep_blessing/trigger/shoot
#
#
#
# @within function
#   asset:artifact/1253.deteriorated_sheep_blessing/trigger/3.main
#   asset:artifact/1253.deteriorated_sheep_blessing/trigger/shoot

# 着弾検知
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing
# 羊毛は例外
    execute if block ^ ^ ^1 #wool run tag @s remove Landing

# 羊毛設置
    execute if predicate api:area/is_breakable run setblock ~ ~ ~ white_wool keep


# 再帰
    execute positioned ^ ^ ^1 if entity @s[tag=YT.FullCharge,tag=!Landing,distance=..32] run function asset:artifact/1253.deteriorated_sheep_blessing/trigger/shoot
    execute positioned ^ ^ ^1 if entity @s[tag=!YT.FullCharge,tag=!Landing,distance=..16] run function asset:artifact/1253.deteriorated_sheep_blessing/trigger/shoot
