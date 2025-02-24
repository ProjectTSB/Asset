#> asset:mob/0083.thunder_trifler/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/83/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承
    data modify storage asset:mob Extends append value 56
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 83
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3300

# フィールド
    data modify storage asset:mob Field.Damage set value 28
    data modify storage asset:mob Field.MPReduce set value 10
