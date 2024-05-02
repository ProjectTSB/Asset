#> asset:artifact/1088.purifying_hydrangea/trigger/7.give_effect
#
# バフを付与する
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/4.set_effect_target

# 使用者ではないなら演出
    execute if entity @s[tag=!this] run function asset:artifact/1088.purifying_hydrangea/trigger/vfx

# 浄藍(ID:253)を付与する
    data modify storage api: Argument.ID set value 253
    function api:entity/mob/effect/give
