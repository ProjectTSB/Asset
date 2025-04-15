#> asset:mob/0301.karmic/tick/05.sword_slash/slash
#
#
#
# @within function asset:mob/0301.karmic/tick/05.sword_slash/main

#> private
# @private
    #declare tag Hit

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6
    playsound item.trident.throw hostile @a ~ ~ ~ 1 1.6
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1

# ヒット判定
    execute positioned ^ ^ ^2 run tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^4 run tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^6 run tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^8 run tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^10 run tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^12 run tag @a[gamemode=!spectator,distance=..5] add Hit
    execute positioned ^ ^ ^-100 run tag @a[tag=Hit,distance=..100] remove Hit

# ダメージ
    data modify storage api: Argument.Damage set value 33.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=Hit,tag=!PlayerShouldInvulnerable,distance=..12] at @s run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=Hit,distance=..20] remove Hit
