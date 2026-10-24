#> asset:artifact/1619.volt_rave/using_item/charge/full_charge
#
# フルチャ完了時
#
# @within function asset:artifact/1619.volt_rave/using_item/charge/

# 演出
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:electric1 player @a ~ ~ ~ 1 1.6

# スタック表示用エフェクト
    data modify storage api: Argument.ID set value 394
    data modify storage api: Argument.Stack set value 2
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
