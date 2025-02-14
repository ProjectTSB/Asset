#> asset:object/1002.malleus_maleficarum/summon/m
#
# @input args
#   Rotation : float @ 2
# @within function asset:object/1002.malleus_maleficarum/summon/

    $summon ender_pearl ~ ~ ~ {Rotation:$(Rotation),Tags:["1002.Vehicle"],Passengers:[{id:"marker",Tags:["ObjectInit"]}]}
