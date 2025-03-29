#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/attack
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# サウンド
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6

# 剣発射バフを付与
    data modify storage api: Argument.ID set value 322
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.Duration set value 10
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
