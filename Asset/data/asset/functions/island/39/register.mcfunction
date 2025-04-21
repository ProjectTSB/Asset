#> asset:island/39/register
#
# 島の定義データ
#
# @within function asset:island/39/


execute unless loaded -141 78 144 run return 1

# ID (int)
    data modify storage asset:island ID set value 39
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-141, 78, 144]
# Rotation (string)
    data modify storage asset:island Rotation set value -90f
# BossID (string)
    # data modify storage asset:island BossID set value 