#> asset:artifact/1269.apocalypse/using_item/update_stack
#
#
#
# @within function asset:artifact/1269.apocalypse/using_item/3.main

# スタック更新とそれの演出
    execute if score @s Z9.Charge matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s Z9.Charge matches 1 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.2

    execute if score @s Z9.Charge matches 21..40 run data modify storage api: Argument.Stack set value 2
    execute if score @s Z9.Charge matches 21 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.3

    execute if score @s Z9.Charge matches 41..60 run data modify storage api: Argument.Stack set value 3
    execute if score @s Z9.Charge matches 41 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.4

    execute if score @s Z9.Charge matches 61..80 run data modify storage api: Argument.Stack set value 4
    execute if score @s Z9.Charge matches 61 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.5

    execute if score @s Z9.Charge matches 81..100 run data modify storage api: Argument.Stack set value 5
    execute if score @s Z9.Charge matches 81 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.6

    execute if score @s Z9.Charge matches 101..120 run data modify storage api: Argument.Stack set value 6
    execute if score @s Z9.Charge matches 101 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.8

    execute if score @s Z9.Charge matches 121..140 run data modify storage api: Argument.Stack set value 7
    execute if score @s Z9.Charge matches 121 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.9

    execute if score @s Z9.Charge matches 141.. run data modify storage api: Argument.Stack set value 8
    execute if score @s Z9.Charge matches 141 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 334
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
