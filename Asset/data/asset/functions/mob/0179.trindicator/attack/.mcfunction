#> asset:mob/0179.trindicator/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/179/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim,distance=..6] run particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 2 200
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 0.6 1.3 0
    execute at @p[tag=Victim,distance=..6] run playsound minecraft:entity.dolphin.splash hostile @a ~ ~ ~ 0.6 1 0

# 与えるダメージ
    data modify storage api: Argument.Damage set value 13f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
