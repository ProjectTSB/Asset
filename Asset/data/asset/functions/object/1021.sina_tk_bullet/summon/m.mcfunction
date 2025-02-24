#> asset:object/1021.sina_tk_bullet/summon/m
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/1021.sina_tk_bullet/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
