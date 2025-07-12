#> asset:island/37/register
#
# 島の定義データ
#
# @within function asset:island/37/


execute unless loaded -227 170 4 run return 1

# ID (int)
    data modify storage asset:island ID set value 37
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-227, 170, 4]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 78
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""