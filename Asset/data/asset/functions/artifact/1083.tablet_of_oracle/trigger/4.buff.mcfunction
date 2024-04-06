#> asset:artifact/1083.tablet_of_oracle/trigger/4.buff
#
# ランダムなバフを付与
#
# @within function asset:artifact/1083.tablet_of_oracle/trigger/3.main

#> Private
# @private
    #declare score_holder $Random

# 4種のうちランダムなバフ1つを付与する

# ランダム処理
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

# 付与する
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ID set value 248
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ID set value 249
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ID set value 250
    execute if score $Random Temporary matches 3 run data modify storage api: Argument.ID set value 251
    function api:entity/mob/effect/give

# リセット
    scoreboard players reset $Random Temporary
