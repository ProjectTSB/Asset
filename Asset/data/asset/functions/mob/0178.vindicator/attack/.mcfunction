#> asset:mob/0178.vindicator/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/178/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 100
    execute at @p[tag=Victim,distance=..6] run particle minecraft:explosion ~ ~ ~ 0.7 0.1 0.7 0 10
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.7 1

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 11f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset
