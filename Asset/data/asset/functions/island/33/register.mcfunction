#> asset:island/33/register
#
# 島の定義データ
#
# @within function asset:island/33/


execute unless loaded -2688 1 -385 run return 1

# ID (int)
    data modify storage asset:island ID set value 33
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-2688, 1, -385]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    data modify storage asset:island BossID set value 301
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_karmic"