#> asset:mob/0090.decapitation/register
# @within asset:mob/alias/90/register

# 継承
    data modify storage asset:mob Extends append value 89
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 90
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1200

# フィールド
# ダメージ設定
    data modify storage asset:mob Field.Damage set value 22f
