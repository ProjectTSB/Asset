#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire
#
#
#
# @within function
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/tick
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire

function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/

data modify storage lib: args.dx set value 6.3
data modify storage lib: args.dy set value 6.3
data modify storage lib: args.dz set value 20
data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
execute positioned ^ ^ ^20 run function lib:rotatable_dxyz/m with storage lib: args
execute as @a[tag=DXYZ] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/damage

data remove storage lib: args
