#> asset:island/24/register
#
# 島の定義データ
#
# @within function asset:island/24/


execute unless loaded 193 5 -142 run return 1

# ID (int)
    data modify storage asset:island ID set value 24
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [193, 5, -142]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value 