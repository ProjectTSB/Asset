#> asset:island/28/register
#
# 島の定義データ
#
# @within function asset:island/28/


execute unless loaded 163 10 194 run return 1

# ID (int)
    data modify storage asset:island ID set value 28
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [163, 10, 194]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value 