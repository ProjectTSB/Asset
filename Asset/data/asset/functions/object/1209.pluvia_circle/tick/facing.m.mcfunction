#> asset:object/1209.pluvia_circle/tick/facing.m
#
#
#
# @within function asset:object/1209.pluvia_circle/tick/

# this.TargetMobUUIDに対してfacing
# だいたい下にいる場合しかfacingしない
    $execute positioned ~ ~-10 ~ facing entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..10] eyes positioned as @s run tp @s ~ ~ ~ ~ ~
