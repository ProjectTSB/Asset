#> asset:island/10/register
#
# 島の定義データ
#
# @within function asset:island/10/


execute unless loaded -82 7 11 run return 1

# ID (int)
    data modify storage asset:island ID set value 10
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-82, 7, 11]
# Rotation (string)
    data modify storage asset:island Rotation set value 180f
# BossID (string)
    # data modify storage asset:island BossID set value 