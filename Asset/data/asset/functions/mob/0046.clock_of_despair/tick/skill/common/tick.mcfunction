#> asset:mob/0046.clock_of_despair/tick/skill/common/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/schedule

execute if entity @s[tag=1A.SkillBeam] run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/tick
# execute if entity @s[tag=1A.SkillThunderMaker] rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/vfx
execute if entity @s[tag=1A.WallLaserClock] run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/tick
