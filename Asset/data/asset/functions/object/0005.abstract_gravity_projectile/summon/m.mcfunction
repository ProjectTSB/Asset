#> asset:object/0005.abstract_gravity_projectile/summon/m
#
# @input args
#   Rotation : float @ 2
#
# @within function asset:object/0005.abstract_gravity_projectile/summon/

$summon snowball ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}},Rotation:$(Rotation),Tags:["5.Projectile"],Passengers:[{id:"marker",Tags:["ObjectInit"]}]}
