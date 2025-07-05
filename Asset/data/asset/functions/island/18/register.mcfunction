#> asset:island/18/register
#
# 島の定義データ
#
# @within function asset:island/18/


execute unless loaded -89 83 226 run return 1

# ID (int)
    data modify storage asset:island ID set value 18
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [-89, 83, 226]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 
# BossDatapack (string)
    # data modify storage asset:island BossDatapack set value ""