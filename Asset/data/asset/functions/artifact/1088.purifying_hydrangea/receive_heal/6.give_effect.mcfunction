#> asset:artifact/1088.purifying_hydrangea/receive_heal/6.give_effect
#
# バフを付与する
#
# @within function asset:artifact/1088.purifying_hydrangea/receive_heal/

# 使用者ではないなら演出
    execute if entity @s[tag=!this] run function asset:artifact/1088.purifying_hydrangea/receive_heal/vfx

# 浄藍(ID:253)を付与する
    data modify storage api: Argument.ID set value 253
    function api:entity/mob/effect/give
