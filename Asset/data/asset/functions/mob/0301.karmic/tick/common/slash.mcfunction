#> asset:mob/0301.karmic/tick/common/slash
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ設定
    data modify storage api: Argument.Damage set value 32.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] at @s run function api:damage/
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function asset:mob/0301.karmic/tick/common/effect
# リセット
    function api:damage/reset
