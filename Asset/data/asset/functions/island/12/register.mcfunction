#> asset:island/12/register
#
# 島の定義データ
#
# @within function asset:island/12/


execute unless loaded -42 34 -145 run return 1

# ID (int)
    data modify storage asset:island ID set value 12
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-42, 34, -145]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 