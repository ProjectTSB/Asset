#> asset:island/7/register
#
# 島の定義データ
#
# @within function asset:island/7/


execute unless loaded 94 15 81 run return 1

# ID (int)
    data modify storage asset:island ID set value 7
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [94, 15, 81]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 