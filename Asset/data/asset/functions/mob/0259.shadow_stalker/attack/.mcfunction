#> asset:mob/0259.shadow_stalker/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/259/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 11.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 補正functionを実行
        function lib:damage/modifier
    # プレイヤー対象に
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        function lib:damage/reset
