#> asset:mob/0337.cherry_blossom_fairy/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/337/register

# 継承
    data modify storage asset:mob Extends append value 336
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 337
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# フィールド
    data modify storage asset:mob Field.Damage set value {Attack:28d,Shower:12d}
