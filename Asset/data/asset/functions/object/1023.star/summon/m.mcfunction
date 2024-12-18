#> asset:object/1023.star/summon/m
#
# マクロで召喚
#
# @input args:
#   Rotation : [float] @ 2
# @within asset:object/1023.star/summon/

# 召喚
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
