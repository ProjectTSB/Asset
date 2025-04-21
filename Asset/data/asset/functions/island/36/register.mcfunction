#> asset:island/36/register
#
# 島の定義データ
#
# @within function asset:island/36/


execute unless loaded 82 86 -232 run return 1

# ID (int)
    data modify storage asset:island ID set value 36
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [82, 86, -232]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 