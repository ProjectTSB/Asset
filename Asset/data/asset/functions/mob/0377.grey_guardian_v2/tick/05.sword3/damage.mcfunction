#> asset:mob/0377.grey_guardian_v2/tick/05.sword3/damage
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/05.sword3/main

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ設定
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=AH.Hit,tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=AH.Hit,distance=..10] remove AH.Hit
