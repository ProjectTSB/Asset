#> asset:island/11/register
#
# 島の定義データ
#
# @within function asset:island/11/


execute unless loaded -75 18 -68 run return 1

# ID (int)
    data modify storage asset:island ID set value 11
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-75, 18, -68]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""