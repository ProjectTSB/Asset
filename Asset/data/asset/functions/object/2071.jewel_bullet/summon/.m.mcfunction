#> asset:object/2071.jewel_bullet/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2071.jewel_bullet/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
