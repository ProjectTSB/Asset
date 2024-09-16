#> asset:mob/0228.frost_eye/register
#
# Mobのデータを指定
#
# @within function asset:mob/0228.frost_eye/_/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 227
    function asset:mob/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 228

# フィールド
# 与えるダメージ
    data modify storage asset:mob Field set value 30
