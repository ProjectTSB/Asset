#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/
#
#
#
# @within function
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire
#   asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/


scoreboard players add $laserDistance Temporary 1
function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/vfx

execute if block ~ ~ ~ #lib:no_collision if score $laserDistance Temporary matches ..79 positioned ^ ^ ^0.5 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/fire/
