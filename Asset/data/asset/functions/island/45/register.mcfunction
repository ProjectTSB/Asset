#> asset:island/45/register
#
# 島の定義データ
#
# @within function asset:island/45/


execute unless loaded 151 108 268 run return 1

# ID (int)
    data modify storage asset:island ID set value 45
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [151, 108, 268]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""