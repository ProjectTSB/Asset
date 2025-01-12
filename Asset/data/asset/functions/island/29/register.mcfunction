#> asset:island/29/register
#
# 島の定義データ
#
# @within function asset:island/29/


execute unless loaded -139 51 68 run return 1

# ID (int)
    data modify storage asset:island ID set value 29
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-139, 51, 68]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 