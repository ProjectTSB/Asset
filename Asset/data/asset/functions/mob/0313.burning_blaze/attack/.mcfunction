#> asset:mob/0313.burning_blaze/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/313/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 与えるダメージ
    data modify storage api: Argument.Damage set value 18f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# ダメージ
    execute as @p[tag=Victim,tag=!PlayerShouldInvulnerable,distance=..64] run function api:damage/
# 演出
    execute at @p[tag=Victim,tag=!PlayerShouldInvulnerable,distance=..64] run particle lava ~ ~1 ~ 0.2 0.5 0.2 0 5
    execute at @p[tag=Victim,tag=!PlayerShouldInvulnerable,distance=..64] run playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1 0.5
    execute at @p[tag=Victim,tag=!PlayerShouldInvulnerable,distance=..64] run playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1 0.6

# リセット
    function api:damage/reset
