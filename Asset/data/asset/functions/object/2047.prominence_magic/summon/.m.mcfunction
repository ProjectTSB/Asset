#> asset:object/2047.prominence_magic/summon/.m
#
# マクロで召喚する
#
# args:
#   Rotation: float @ 2
#
# @within function asset:object/2047.prominence_magic/summon/

# 召喚
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
