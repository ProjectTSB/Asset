#> asset:object/1042.mini_black_hole_flying/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1042.mini_black_hole_flying/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
