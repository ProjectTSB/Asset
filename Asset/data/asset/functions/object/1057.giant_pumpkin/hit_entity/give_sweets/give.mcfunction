#> asset:object/1057.giant_pumpkin/hit_entity/give_sweets/give
#
# ランダムにお菓子神器をgiveする
#
# @within function asset:object/1057.giant_pumpkin/hit_entity/give_sweets/recursive

#> Private
# @private
    #declare score_holder $Random

# ランダムにIDを設定
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ID set value 1106
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ID set value 1114
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ID set value 1115
    execute if score $Random Temporary matches 3 run data modify storage api: Argument.ID set value 1117

# give
    function api:artifact/give/from_id

# リセット
    scoreboard players reset $Random Temporary