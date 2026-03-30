#> asset:island/64/register
#
# 島の定義データ
#
# @within function asset:island/64/


execute unless loaded -3968 100 127 run return 1

# ID (int)
    data modify storage asset:island ID set value 64
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value ["-3968.0", "100", "127.0"]
# Rotation (string)
    data modify storage asset:island Rotation set value 0f
# BossID (string)
    data modify storage asset:island BossID set value 456
# BossDatapack (string)
    data modify storage asset:island BossDatapack set value "AJ_gargo_ex_machina"