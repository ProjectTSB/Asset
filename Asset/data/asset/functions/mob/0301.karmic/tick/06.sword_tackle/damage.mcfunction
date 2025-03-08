#> asset:mob/0301.karmic/tick/06.sword_tackle/damage
#
#
#
# @within function asset:mob/0301.karmic/tick/06.sword_tackle/main

#> private
# @private
    #declare tag Hit

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6
    playsound item.trident.throw hostile @a ~ ~ ~ 1 1.6
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1
    execute rotated ~30 90 run function asset:mob/0301.karmic/tick/06.sword_tackle/particle

# ヒット判定
    tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^100 run tag @a[tag=Hit,distance=..99] remove Hit
    execute positioned ^ ^ ^-100 run tag @a[tag=Hit,distance=..99] remove Hit
# ダメージ
    data modify storage api: Argument.Damage set value 14.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=Hit,tag=!PlayerShouldInvulnerable,distance=..10] at @s run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=Hit,distance=..10] remove Hit
