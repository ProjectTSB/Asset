#> asset:island/31/register
#
# 島の定義データ
#
# @within function asset:island/31/


execute unless loaded -149 49 -145 run return 1

# ID (int)
    data modify storage asset:island ID set value 31
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-149, 49, -145]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 