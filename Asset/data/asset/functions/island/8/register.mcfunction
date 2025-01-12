#> asset:island/8/register
#
# 島の定義データ
#
# @within function asset:island/8/


execute unless loaded 122 39 41 run return 1

# ID (int)
    data modify storage asset:island ID set value 8
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [122, 39, 41]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 