#> asset:object/1112.school_of_fish/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1112.school_of_fish/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
