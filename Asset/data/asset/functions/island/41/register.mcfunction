#> asset:island/41/register
#
# 島の定義データ
#
# @within function asset:island/41/


execute unless loaded -70 155 180 run return 1

# ID (int)
    data modify storage asset:island ID set value 41
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-70, 155, 180]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""