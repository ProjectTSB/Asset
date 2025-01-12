#> asset:island/62/register
#
# 島の定義データ
#
# @within function asset:island/62/


execute unless loaded 106 161 -561 run return 1

# ID (int)
    data modify storage asset:island ID set value 62
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [106, 161, -561]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 