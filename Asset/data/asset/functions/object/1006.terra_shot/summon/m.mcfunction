#> asset:object/1006.terra_shot/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1006.terra_shot/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
