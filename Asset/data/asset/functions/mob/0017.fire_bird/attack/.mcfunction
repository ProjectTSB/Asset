#> asset:mob/0017.fire_bird/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/17/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle flame ~ ~1 ~ 0.8 0.8 0.8 0 20 normal @a
    execute at @p[tag=Victim] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 11.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset
