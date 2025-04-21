#> asset:island/34/register
#
# 島の定義データ
#
# @within function asset:island/34/


execute unless loaded -57 240 390 run return 1

# ID (int)
    data modify storage asset:island ID set value 34
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-57, 240, 390]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 