#> asset:island/44/register
#
# 島の定義データ
#
# @within function asset:island/44/


execute unless loaded 298 53 -80 run return 1

# ID (int)
    data modify storage asset:island ID set value 44
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [298, 53, -80]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 