#> asset:object/2190.eclael_slashbeam/tick/attack
#
# 攻撃判定
#
# @within function asset:object/2190.eclael_slashbeam/tick/

# TODO：与えるダメージの調整
# ダメージ
        data modify storage api: Argument.Damage set value 40f
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
    tag @a remove 2190.Hit
