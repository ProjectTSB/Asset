#> asset:mob/0271.indomitable_warrior/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/271/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim] run particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 50
    execute at @p[tag=Victim] run particle dust 1 1 0.161 1.5 ~ ~2 ~ 0 2.5 0 0 50
    execute at @p[tag=Victim] run particle minecraft:poof ~ ~ ~ 0.3 0 0.3 0.05 10

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound item.trident.throw hostile @a ~ ~ ~ 1 1

# 属性ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 21f
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
