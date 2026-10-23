#> asset:effect/0426.star_cycles/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0426.star_cycles/_/tick

#> private
# @private
    #declare score_holder $MPRegion
    #declare score_holder $30
    #declare score_holder $3

# MP30ごとの区画でバフが変わる
    function api:mp/get_current
    execute store result score $MPRegion Temporary run data get storage api: Return.CurrentMP
    scoreboard players operation $MPRegion Temporary /= $30 Const
    scoreboard players operation $MPRegion Temporary %= $3 Const

    #すでに同一のエフェクトが付与されている場合は何もしない
    function api:entity/mob/effect/get/all

    #(MP/30)%3 = 0: Effect422(火属性)
    execute if score $MPRegion Temporary matches 0 unless data storage api: Return.EffectList[{ID:422}] run data modify storage api: Argument.ID set value 422
    #(MP/30)%3 = 1: Effect423(水属性)
    execute if score $MPRegion Temporary matches 1 unless data storage api: Return.EffectList[{ID:423}] run data modify storage api: Argument.ID set value 423
    #(MP/30)%3 = 2: Effect424(雷属性)
    execute if score $MPRegion Temporary matches 2 unless data storage api: Return.EffectList[{ID:424}] run data modify storage api: Argument.ID set value 424

    #バフ変更があった場合のみ付与
    execute if data storage api: Argument.ID run function asset:effect/0426.star_cycles/tick/apply_effect.m with storage api: Argument
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $MPRegion Temporary
