#> asset:object/2058.return_thunder/summon/.m
#
# マクロで召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2058.return_thunder/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
