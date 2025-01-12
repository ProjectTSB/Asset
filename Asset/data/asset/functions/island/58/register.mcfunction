#> asset:island/58/register
#
# 島の定義データ
#
# @within function asset:island/58/


execute unless loaded 3 73 128 run return 1

# ID (int)
    data modify storage asset:island ID set value 58
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [3, 73, 128]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    data modify storage asset:island BossID set value 378