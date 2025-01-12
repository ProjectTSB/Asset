#> asset:island/6/register
#
# 島の定義データ
#
# @within function asset:island/6/


execute unless loaded 86 7 136 run return 1

# ID (int)
    data modify storage asset:island ID set value 6
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [86, 7, 136]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    # data modify storage asset:island BossID set value 