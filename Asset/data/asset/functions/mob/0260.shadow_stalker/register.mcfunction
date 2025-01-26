#> asset:mob/0260.shadow_stalker/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/260/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承
    data modify storage asset:mob Extends append value 259
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 260
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3500
# フィールド
    data modify storage asset:mob Field.Damage set value 36f
