#> asset:mob/0270.who_hate/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/270/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    particle flame ~ ~1 ~ 0.8 0.8 0.8 0 20 normal @a
    playsound block.lava.extinguish hostile @a ~ ~ ~ 2 1 0

# 属性ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 11.0f
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
