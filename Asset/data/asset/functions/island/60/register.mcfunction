#> asset:island/60/register
#
# 島の定義データ
#
# @within function asset:island/60/


execute unless loaded 192 86 -362 run return 1

# ID (int)
    data modify storage asset:island ID set value 60
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [192, 86, -362]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    data modify storage asset:island BossID set value 237
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""
