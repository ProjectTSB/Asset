#> asset:object/1209.pluvia_circle/tick/facing.m
#
#
#
# @within function asset:object/1209.pluvia_circle/tick/

# this.MobUUIDに対してfacing
    $execute facing entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(MobUUID)}] eyes run tp @s ~ ~ ~ ~ ~
