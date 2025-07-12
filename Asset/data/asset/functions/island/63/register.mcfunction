#> asset:island/63/register
#
# 島の定義データ
#
# @within function asset:island/63/


execute unless loaded -456 177 58 run return 1

# ID (int)
    data modify storage asset:island ID set value 63
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-456, 177, 58]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 390
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_triple_rabbits"