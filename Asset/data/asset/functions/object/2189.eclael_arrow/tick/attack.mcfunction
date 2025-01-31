#> asset:object/2189.eclael_arrow/tick/attack
#
# 攻撃判定
#
# @within function asset:object/2189.eclael_arrow/tick/

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage api: Argument.Damage set value 38f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    function api:damage/
# リセット
    function api:damage/reset

# 終了
    tag @a remove 2189.Hit
