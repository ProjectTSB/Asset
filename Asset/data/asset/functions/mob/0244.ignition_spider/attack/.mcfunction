#> asset:mob/0244.ignition_spider/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/244/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim] run particle flame ~ ~1 ~ 0.8 0.8 0.8 0 20 normal @a
    execute at @p[tag=Victim] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1 0

# 属性ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 4.5f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function api:damage/modifier
    # プレイヤー対象に
        execute as @p[tag=Victim] run function api:damage/
    # リセット
        function api:damage/reset
