#> asset:island/4/register
#
# 島の定義データ
#
# @within function asset:island/4/


execute unless loaded 4199 188 -398 run return 1

# ID (int)
    data modify storage asset:island ID set value 4
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [4199, 188, -398]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    # data modify storage asset:island BossID set value 