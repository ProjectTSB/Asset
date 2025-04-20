#> asset:island/51/register
#
# 島の定義データ
#
# @within function asset:island/51/


execute unless loaded -202 204 614 run return 1

# ID (int)
    data modify storage asset:island ID set value 51
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-202, 204, 614]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    data modify storage asset:island BossID set value 437
