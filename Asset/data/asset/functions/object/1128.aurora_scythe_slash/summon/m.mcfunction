#> asset:object/1128.aurora_scythe_slash/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1128.aurora_scythe_slash/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
