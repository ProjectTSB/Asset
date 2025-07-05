#> asset:island/55/register
#
# 島の定義データ
#
# @within function asset:island/55/


execute unless loaded -174 158 184 run return 1

# ID (int)
    data modify storage asset:island ID set value 55
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-174, 158, 184]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    data modify storage asset:island BossID set value 380
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_haruclaire_v3"