#> asset:mob/0092.red_rose/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/92/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute as @p[tag=Victim] at @s run particle lava ~ ~ ~ 0.1 0 0.1 0 10
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1 2

# 与えるダメージ
    data modify storage api: Argument.Damage set value 10f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim] run function api:damage/
# リセット
    function api:damage/reset
