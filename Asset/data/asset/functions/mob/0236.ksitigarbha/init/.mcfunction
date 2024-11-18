#> asset:mob/0236.ksitigarbha/init/
# @within asset:mob/alias/236/init

data modify storage api: Argument.ID set value 276
execute positioned ~ ~0.5 ~ run function api:mob/summon
tag @e[type=zombie,tag=6K.LinkInit,distance=..0.01] remove 6K.LinkInit
