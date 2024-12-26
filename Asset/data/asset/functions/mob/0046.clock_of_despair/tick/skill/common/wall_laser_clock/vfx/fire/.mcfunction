#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/
#
#
#
# @within function
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/

scoreboard players add $laserDistance Temporary 1
scoreboard players operation $VFXPattern Temporary = $laserDistance Temporary
scoreboard players operation $VFXPattern Temporary %= $2 Const
execute if score $VFXPattern Temporary matches 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/vfx
execute if score $VFXPattern Temporary matches 1 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/vfx2

execute if block ~ ~ ~ #lib:no_collision if score $laserDistance Temporary matches ..79 positioned ^ ^ ^0.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/
