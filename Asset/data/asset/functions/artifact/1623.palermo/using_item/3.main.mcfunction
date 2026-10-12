#> asset:artifact/1623.palermo/using_item/3.main
#
#
#
# @within function asset:artifact/1623.palermo/using_item/2.check_condition

#> Private
# @private
  #declare score_holder $CurrentStack
  #declare score_holder $Consumed

#エフェクトのスタック
    execute store result score $CurrentStack Temporary run data get storage api: Return.Effect.Stack

# 空きスタックに合わせて火薬を最大2個消費する
    execute if score $CurrentStack Temporary matches 9 store result score $Consumed Temporary run clear @s minecraft:gunpowder 1
    execute if score $CurrentStack Temporary matches ..8 store result score $Consumed Temporary run clear @s minecraft:gunpowder 2

# 実際に消費した数だけスタックを増やす
    scoreboard players operation $CurrentStack Temporary += $Consumed Temporary
    data modify storage api: Argument.ID set value 410
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $CurrentStack Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 計算用スコアを片付ける
    scoreboard players reset $Consumed Temporary
