#> asset:island/48/register
#
# 島の定義データ
#
# @within function asset:island/48/


execute unless loaded 413 92 146 run return 1

# ID (int)
    data modify storage asset:island ID set value 48
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [413, 92, 146]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    data modify storage asset:island BossID set value 175
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""