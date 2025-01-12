#> asset:island/16/register
#
# 島の定義データ
#
# @within function asset:island/16/


execute unless loaded 75 -12 35 run return 1

# ID (int)
    data modify storage asset:island ID set value 16
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [75, -12, 35]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 