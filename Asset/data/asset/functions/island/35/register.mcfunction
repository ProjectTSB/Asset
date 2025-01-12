#> asset:island/35/register
#
# 島の定義データ
#
# @within function asset:island/35/


execute unless loaded 267 106 -274 run return 1

# ID (int)
    data modify storage asset:island ID set value 35
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [267, 106, -274]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    # data modify storage asset:island BossID set value 