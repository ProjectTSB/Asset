#> asset:mob/0080.fukotsu/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/80/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


    execute at @a[tag=Victim,distance=..5] run particle dust 1 1 0 1 ~ ~2 ~ 0 2.5 0 0 100
    playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set value 21f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=Victim,distance=..5] run function api:damage/
    function api:damage/reset
