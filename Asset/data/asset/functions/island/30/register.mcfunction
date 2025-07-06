#> asset:island/30/register
#
# 島の定義データ
#
# @within function asset:island/30/


execute unless loaded -17 2 107 run return 1

# ID (int)
    data modify storage asset:island ID set value 30
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-17, 2, 107]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""
