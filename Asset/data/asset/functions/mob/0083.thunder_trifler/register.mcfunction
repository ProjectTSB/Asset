#> asset:mob/0083.thunder_trifler/register
#
# Mobのデータを指定
#
# @within function asset:mob/0083.thunder_trifler/_/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# ID (int)
    data modify storage asset:mob ID set value 83

# フィールド
# [ダメージ量、MP減少量の計算に必要な値]
    data modify storage asset:mob Field set value [34,6]
