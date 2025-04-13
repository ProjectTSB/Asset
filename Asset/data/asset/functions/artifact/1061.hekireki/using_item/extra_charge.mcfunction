#> asset:artifact/1061.hekireki/using_item/extra_charge
#
#
#
# @within function asset:artifact/1061.hekireki/using_item/2.check_condition

# チャージ段階に応じてスタックを更新
    execute if score @s TH.Charge matches 20 run data modify storage api: Argument.Stack set value 1
    execute if score @s TH.Charge matches 35 run data modify storage api: Argument.Stack set value 2
    execute if score @s TH.Charge matches 50 run data modify storage api: Argument.Stack set value 3

# 演出
    execute if score @s TH.Charge matches 20 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 0.7 1.8
    execute if score @s TH.Charge matches 20 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1061.hekireki/using_item/vfx/charge

    execute if score @s TH.Charge matches 35 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 0.7 1.9
    execute if score @s TH.Charge matches 35 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1061.hekireki/using_item/vfx/charge

    execute if score @s TH.Charge matches 50 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 0.7 2
    execute if score @s TH.Charge matches 50 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1061.hekireki/using_item/vfx/charge

# 最大チャージ演出
    execute if score @s TH.Charge matches 54.. run function asset:artifact/1061.hekireki/using_item/full_charge_vfx

# スタック表示用Effect
    data modify storage api: Argument.ID set value 323
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
