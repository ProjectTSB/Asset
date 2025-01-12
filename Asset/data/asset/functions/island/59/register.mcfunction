#> asset:island/59/register
#
# 島の定義データ
#
# @within function asset:island/59/


execute unless loaded 100 107 2920 run return 1

# ID (int)
    data modify storage asset:island ID set value 59
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [100, 107, 2920]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 1004