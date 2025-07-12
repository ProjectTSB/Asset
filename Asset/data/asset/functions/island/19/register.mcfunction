#> asset:island/19/register
#
# 島の定義データ
#
# @within function asset:island/19/


execute unless loaded 3 37 -221 run return 1

# ID (int)
    data modify storage asset:island ID set value 19
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [3, 37, -221]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""