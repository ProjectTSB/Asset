#> asset:island/21/register
#
# 島の定義データ
#
# @within function asset:island/21/


execute unless loaded 178 81 41 run return 1

# ID (int)
    data modify storage asset:island ID set value 21
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [178, 81, 41]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""
