#> asset:mob/0269.goblins/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/269/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    playsound minecraft:entity.wither_skeleton.hurt hostile @a ~ ~ ~ 1.0 1

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 4.0d
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim] run function api:damage/
# リセット
    function api:damage/reset
