#> asset:island/50/register
#
# 島の定義データ
#
# @within function asset:island/50/


execute unless loaded 174 175 -184 run return 1

# ID (int)
    data modify storage asset:island ID set value 50
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [174, 175, -184]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 365
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_frestchika"