#> asset:island/40/register
#
# 島の定義データ
#
# @within function asset:island/40/


execute unless loaded -275 23 170 run return 1

# ID (int)
    data modify storage asset:island ID set value 40
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-275, 23, 170]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    data modify storage asset:island BossID set value 376
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_convict"