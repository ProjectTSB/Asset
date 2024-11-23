#> asset:mob/0061.stray/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/61/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail



# 水属性ダメージ

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 1.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset
