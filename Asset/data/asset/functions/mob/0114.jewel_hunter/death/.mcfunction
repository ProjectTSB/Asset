#> asset:mob/0114.jewel_hunter/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/114/death

#> Private
# @private
    #declare score_holder $Random

# 演出
    particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    playsound minecraft:block.amethyst_cluster.hit hostile @a ~ ~ ~ 2 0 0

# 確率で宝石系ドロップ
    execute store result score $Random Temporary run random value 0..3
    execute if score $Random Temporary matches 0 if predicate lib:random_pass_per/50 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:16b}}
    execute if score $Random Temporary matches 1 if predicate lib:random_pass_per/50 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_block",Count:16b}}
    execute if score $Random Temporary matches 2 if predicate lib:random_pass_per/50 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",Count:16b}}
    execute if score $Random Temporary matches 3 if predicate lib:random_pass_per/50 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_block",Count:16b}}
    scoreboard players reset $Random Temporary
