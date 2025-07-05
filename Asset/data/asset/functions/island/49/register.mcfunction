#> asset:island/49/register
#
# 島の定義データ
#
# @within function asset:island/49/


execute unless loaded 462 232 -153 run return 1

# ID (int)
    data modify storage asset:island ID set value 49
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [462, 232, -153]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 338
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_corundum_twins"