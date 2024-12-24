#> asset:mob/0413.mini_shulker/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/413/register

# 継承
    data modify storage asset:mob Extends append value 106
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 413
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 600
# フィールド
    data modify storage asset:mob Field.Damage set value 20
