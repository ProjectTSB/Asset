#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

#> Val
# @private
#declare tag ClockInit

summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["1A.WallLazerClockDisplay","1A.WallLazerClock","ClockInit","Object","Uninterferable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6f,6f,6f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20225}}}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.WallLazerClock","ClockInit","Object","Uninterferable"]}
tp @e[type=item_display,tag=1A.WallLazerClockDisplay,tag=ClockInit,distance=..0.01] ~ ~ ~ ~ 90
tp @e[type=marker,tag=ClockInit,distance=..0.01] ~ ~ ~ ~-90 ~
tag @e[type=marker,tag=ClockInit,distance=..0.01] remove ClockInit
