#> asset:island/23/register
#
# 島の定義データ
#
# @within function asset:island/23/


execute unless loaded -75 89 -33 run return 1

# ID (int)
    data modify storage asset:island ID set value 23
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-75, 89, -33]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""