#> asset:island/38/register
#
# 島の定義データ
#
# @within function asset:island/38/


execute unless loaded -144 109 -231 run return 1

# ID (int)
    data modify storage asset:island ID set value 38
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-144, 109, -231]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 123
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_lexiel"