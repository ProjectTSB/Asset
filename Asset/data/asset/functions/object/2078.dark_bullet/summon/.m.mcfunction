#> asset:object/2078.dark_bullet/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2078.dark_bullet/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
