#> asset:object/1209.pluvia_circle/tick/facing.m
#
#
#
# @within function asset:object/1209.pluvia_circle/tick/

# this.TargetMobUUIDに対してfacing
    $execute facing entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..15] eyes run tp @s ~ ~ ~ ~ ~
