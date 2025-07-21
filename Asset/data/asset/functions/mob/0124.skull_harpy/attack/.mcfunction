#> asset:mob/0124.skull_harpy/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/124/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
    execute at @p[tag=Victim] run playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0

# ハード以上の場合、浮遊を付与
    execute if predicate api:global_vars/difficulty/min/3_blessless as @p[tag=Victim,distance=..60] run function asset:mob/0124.skull_harpy/attack/levitation

# 引数の設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
