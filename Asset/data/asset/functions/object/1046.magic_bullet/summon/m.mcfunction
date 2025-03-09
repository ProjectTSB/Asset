#> asset:object/1046.magic_bullet/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1046.magic_bullet/summon/

# 召喚
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
