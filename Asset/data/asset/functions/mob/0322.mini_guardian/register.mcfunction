#> asset:mob/0322.mini_guardian/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/322/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承
    data modify storage asset:mob Extends append value 321
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 322
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3000

# フィールド
    data modify storage asset:mob Field.Damage set value 10f
