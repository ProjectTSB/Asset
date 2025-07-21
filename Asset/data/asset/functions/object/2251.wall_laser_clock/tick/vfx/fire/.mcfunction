#> asset:object/2251.wall_laser_clock/tick/vfx/fire/
#
#
#
# @within function
#   asset:object/2251.wall_laser_clock/tick/fire
#   asset:object/2251.wall_laser_clock/tick/vfx/fire/

scoreboard players add $LaserDistance Temporary 1
scoreboard players operation $VFXPattern Temporary = $LaserDistance Temporary
scoreboard players operation $VFXPattern Temporary %= $2 Const
execute if score $VFXPattern Temporary matches 0 run function asset:object/2251.wall_laser_clock/tick/vfx/fire/1
execute if score $VFXPattern Temporary matches 1 run function asset:object/2251.wall_laser_clock/tick/vfx/fire/2

execute if block ~ ~ ~ #lib:no_collision if score $LaserDistance Temporary matches ..40 positioned ^ ^ ^0.8 run function asset:object/2251.wall_laser_clock/tick/vfx/fire/
