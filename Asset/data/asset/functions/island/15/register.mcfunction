#> asset:island/15/register
#
# 島の定義データ
#
# @within function asset:island/15/


execute unless loaded -28 8 38 run return 1

# ID (int)
    data modify storage asset:island ID set value 15
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-28, 8, 38]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    # data modify storage asset:island BossID set value 