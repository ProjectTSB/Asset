#> asset:object/1043.mini_black_hole/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1043.mini_black_hole/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
