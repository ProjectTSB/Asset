#> asset:island/14/register
#
# 島の定義データ
#
# @within function asset:island/14/


execute unless loaded 182 10 -38 run return 1

# ID (int)
    data modify storage asset:island ID set value 14
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [182, 10, -38]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    data modify storage asset:island BossID set value 55
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""