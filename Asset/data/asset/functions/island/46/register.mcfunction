#> asset:island/46/register
#
# 島の定義データ
#
# @within function asset:island/46/


execute unless loaded 23 25 358 run return 1

# ID (int)
    data modify storage asset:island ID set value 46
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [23, 25, 358]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 311