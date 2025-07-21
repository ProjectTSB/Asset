#> asset:mob/0414.mini_shulker/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/414/register

# 継承
    data modify storage asset:mob Extends append value 106
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 414
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1950
# フィールド
    data modify storage asset:mob Field.Damage set value 40
    data modify storage asset:mob Field.UnlockTurnLimit set value true
