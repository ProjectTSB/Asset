#> asset:object/2073.flame_magic/summon/.m
#
# マクロで召喚する
#
# @input args:
#   Rotation: double @ 2
# @within function asset:object/2073.flame_magic/summon/

    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
