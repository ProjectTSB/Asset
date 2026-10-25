#> asset:effect/0263.chivalry_of_ruin/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0263.chivalry_of_ruin/_/tick

#> Private
# @private
    #declare score_holder $Stack

# スタックを取得
    execute store result score $Stack Temporary run data get storage asset:context Stack

# スタックに比例してパーティクル表示量を変える
    execute if score $Stack Temporary matches 1..4 if predicate lib:random_pass_per/2 run particle soul_fire_flame ~ ~1.2 ~ 1 0.4 1 0 1
    execute if score $Stack Temporary matches 5..9 if predicate lib:random_pass_per/4 run particle soul_fire_flame ~ ~1.2 ~ 1 0.4 1 0 1
    execute if score $Stack Temporary matches 10 if predicate lib:random_pass_per/10 run particle soul_fire_flame ~ ~1.2 ~ 2 0.4 2 0 2

# リセット
    scoreboard players reset $Stack Temporary
