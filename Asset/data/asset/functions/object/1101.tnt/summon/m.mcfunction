#> asset:object/1101.tnt/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1101.tnt/summon/

# 元となるEntityを召喚する
    $summon tnt ~ ~ ~ {Rotation:$(Rotation),fuse:40s,Passengers:[{id:"minecraft:marker",Tags:["ObjectInit"]}]}
