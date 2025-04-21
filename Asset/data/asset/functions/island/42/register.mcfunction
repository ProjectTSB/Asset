#> asset:island/42/register
#
# 島の定義データ
#
# @within function asset:island/42/


execute unless loaded 258 53 254 run return 1

# ID (int)
    data modify storage asset:island ID set value 42
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [258, 53, 254]
# Rotation (string)
    data modify storage asset:island Rotation set value 90f
# BossID (string)
    # data modify storage asset:island BossID set value 