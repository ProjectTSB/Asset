#> asset:mob/0228.frost_eye/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/228/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 227
    function asset:mob/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 228
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900

# フィールド
# 与えるダメージ
    data modify storage asset:mob Field.Damage set value 35f
