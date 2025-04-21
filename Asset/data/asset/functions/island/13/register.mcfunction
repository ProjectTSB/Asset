#> asset:island/13/register
#
# 島の定義データ
#
# @within function asset:island/13/


execute unless loaded 62 16 -156 run return 1

# ID (int)
    data modify storage asset:island ID set value 13
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [62, 16, -156]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    # data modify storage asset:island BossID set value 