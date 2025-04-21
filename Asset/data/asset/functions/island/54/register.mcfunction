#> asset:island/54/register
#
# 島の定義データ
#
# @within function asset:island/54/


execute unless loaded 23 41 -379 run return 1

# ID (int)
    data modify storage asset:island ID set value 54
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [23, 41, -379]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    # data modify storage asset:island BossID set value 