#> asset:mob/0063.ghost/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/63/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle squid_ink ~ ~ ~ 0.3 0.3 0.3 0.4 100
    execute at @p[tag=Victim] run playsound entity.squid.death hostile @a ~ ~ ~

# 効果
    effect give @p[tag=Victim] blindness 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 2.5f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset
