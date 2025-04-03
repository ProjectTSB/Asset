#> asset:mob/0437.lawless_iron_doll/tick/base_move/active_overdrive
#
# オーバードライブ付与
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/overheat/
#   asset:mob/0437.lawless_iron_doll/tick/phase_transition/

# エフェクト付与
    data modify storage api: Argument.ID set value 622
    data modify storage api: Argument.Stack set value 1
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle minecraft:end_rod ~ ~1 ~ 0.1 0.5 0.1 0.1 10
    particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.5 0.1 1 10
    playsound ogg:mob.breeze.death2 hostile @a ~ ~ ~ 2 1.5
