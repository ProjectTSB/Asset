#> asset:mob/0254.headless/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/254/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 0.247 0 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1.5

# 与えるダメージ
    data modify storage api: Argument.Damage set value 21f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function api:damage/
# リセット
    function api:damage/reset
