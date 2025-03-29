#> asset:object/1096.was_laser/tick/shoot/ray
#
# 再帰で何ブロック先まで行けるかを計測する
#
# @within function
#   asset:object/1096.was_laser/tick/shoot/
#   asset:object/1096.was_laser/tick/shoot/ray

# 演出
    execute if predicate lib:random_pass_per/75 run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.08 1 normal @a
    execute if predicate lib:random_pass_per/75 run particle soul_fire_flame ^ ^ ^0.25 0.1 0.1 0.1 0.08 1 normal @a
    execute if predicate lib:random_pass_per/50 run particle soul ~ ~ ~ 0.5 .5 0.5 0.25 1 normal @a

# スコア
    scoreboard players add $Range Temporary 1

# 30ブロック進む、または衝突するまで再帰
    execute if score $Range Temporary matches ..19 positioned ^ ^ ^1 if block ^ ^ ^ #lib:no_collision run function asset:object/1096.was_laser/tick/shoot/ray
