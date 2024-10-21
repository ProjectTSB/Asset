#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/tick

execute unless score @s 1A.LifeTime matches -2147483648..2147483647 run scoreboard players set @s 1A.LifeTime -1
scoreboard players add @s 1A.LifeTime 1

execute if score @s 1A.LifeTime matches 01 run data merge entity @s {interpolation_duration:12,transformation:{translation:[0f, 0f, 0f],scale:[7f,0.05f,7f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20390}},start_interpolation:0}

execute if score @s 1A.LifeTime matches 01..08 run tp @s ~ ~ ~ ~5 ~
execute if score @s 1A.LifeTime matches 09..15 run tp @s ~ ~ ~ ~4 ~
execute if score @s 1A.LifeTime matches 16..21 run tp @s ~ ~ ~ ~3 ~
execute if score @s 1A.LifeTime matches 22..26 run tp @s ~ ~ ~ ~2 ~
execute if score @s 1A.LifeTime matches 27..29 run tp @s ~ ~ ~ ~1 ~

execute if score @s 1A.LifeTime matches 33 run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, -0.05f, 0f]},start_interpolation:0}
execute if score @s 1A.LifeTime matches 37 run data merge entity @s {item:{},transformation:{scale:[3.5f, 0.05f, 3.5f]}}


execute if score @s 1A.LifeTime matches 126 run summon area_effect_cloud ~ ~5 ~ {Duration:19,Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f],scale:[3.5f,0f,3.5f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20391}},Tags:["Object","Uninterferable","1A.SkillMarker","1A.GearSubVfx","AllowProcessingCommonTag","AutoKillWhenDieVehicle"]}],Tags:["Object","Uninterferable"]}
execute if score @s 1A.LifeTime matches 126 run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, 0f, 0f],scale:[7f,0.05f,7f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20390}},start_interpolation:0}

execute if score @s 1A.LifeTime matches 126..140 run tp @s ~ ~ ~ ~8 ~

execute if score @s 1A.LifeTime matches 126..130 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/burst_rain/1
execute if score @s 1A.LifeTime matches 131..135 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/burst_rain/2
execute if score @s 1A.LifeTime matches 136..140 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/burst_rain/3
execute if score @s 1A.LifeTime matches 126..140 positioned ~ ~4 ~ run particle flash
execute if score @s 1A.LifeTime matches 126..140 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a ~ ~ ~ 1 2

execute if score @s 1A.LifeTime matches 126..140 if entity @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..8.5] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/damage

execute if score @s 1A.LifeTime matches 140 run data merge entity @s {interpolation_duration:4,transformation:{translation:[0f, -0.05f, 0f]},item:{},start_interpolation:0}


execute if score @s 1A.LifeTime matches 144 run kill @s
