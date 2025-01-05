#> asset:object/2076.aurora_bullet/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : double @ 2
# @within function asset:object/2076.aurora_bullet/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
