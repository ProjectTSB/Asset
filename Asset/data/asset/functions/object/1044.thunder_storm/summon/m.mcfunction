#> asset:object/1044.thunder_storm/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1044.thunder_storm/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
