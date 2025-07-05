#> asset:island/5/register
#
# 島の定義データ
#
# @within function asset:island/5/


execute unless loaded 23 10 55 run return 1

# ID (int)
    data modify storage asset:island ID set value 5
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [23, 10, 55]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""