#> asset:object/2069.soul_bullet/summon/.m
#
# マクロで召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2069.soul_bullet/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
