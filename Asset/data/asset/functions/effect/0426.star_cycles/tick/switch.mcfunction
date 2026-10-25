#> asset:effect/0426.star_cycles/tick/switch
#
#
#
# @within function asset:effect/0426.star_cycles/tick/

    # 付与されているエフェクトに応じて次が決まる
    function api:entity/mob/effect/get/all

    # 422(火属性)の場合は423(水属性)を付与
    execute if data storage api: Return.EffectList[{ID:422}] run data modify storage api: Argument.ID set value 423
    # 423(水属性)の場合は424(雷属性)を付与
    execute if data storage api: Return.EffectList[{ID:423}] run data modify storage api: Argument.ID set value 424
    # 424(雷属性)の場合は422(火属性)を付与
    execute if data storage api: Return.EffectList[{ID:424}] run data modify storage api: Argument.ID set value 422

    #バフ変更があった場合のみ付与
    execute if data storage api: Argument.ID run function asset:effect/0426.star_cycles/tick/apply_effect.m with storage api: Argument
    function api:entity/mob/effect/reset
