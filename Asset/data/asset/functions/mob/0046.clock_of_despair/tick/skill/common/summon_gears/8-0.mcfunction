#> asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/8-0
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}
summon marker ~ ~ ~ {Tags:["1A.GearMarker"]}

execute as @e[type=marker,tag=1A.GearMarker,distance=..0.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/spread

execute store result storage asset:temp MobUUID int 1 run scoreboard players get @s MobUUID
execute as @e[type=marker,tag=1A.GearMarker,distance=..14] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/summon.m {ID:2061}
data remove storage asset:temp MobUUID
