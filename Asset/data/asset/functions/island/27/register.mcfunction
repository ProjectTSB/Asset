#> asset:island/27/register
#
# 島の定義データ
#
# @within function asset:island/27/


execute unless loaded 213 8 112 run return 1

# ID (int)
    data modify storage asset:island ID set value 27
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [213, 8, 112]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value 