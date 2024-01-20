#> asset:mob/0151.recombined/tick/3.random_speed
#
# 速度をランダムに変える
#
# @within function asset:mob/0151.recombined/tick/2.tick

#> Private
# @private
    #declare score_holder $Random

# ランダム処理
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const
    execute if score $Random Temporary matches 0 run attribute @s generic.movement_speed base set 0.15
    execute if score $Random Temporary matches 1 run attribute @s generic.movement_speed base set 0.25
    execute if score $Random Temporary matches 2 run attribute @s generic.movement_speed base set 0.35
# リセット
    scoreboard players reset $Random Temporary