#> asset:object/2039.pumpkin_dps_check/tick/blow_up
#
#
#
# @within function asset:object/2039.pumpkin_dps_check/tick/

# 膨らむ
    execute if entity @s[scores={General.Object.Tick=3}] run playsound entity.puffer_fish.blow_up hostile @a[distance=..64] ~ ~ ~ 0.8 1 0.8
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s transformation.scale set value [25f,25f,25f]
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s transformation.translation[1] set value 12.5f

    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s interpolation_duration set value 2
    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s transformation.scale set value [18f,18f,18f]
    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s transformation.translation[1] set value 9f

    execute if entity @s[scores={General.Object.Tick=13}] run playsound entity.puffer_fish.blow_up hostile @a[distance=..64] ~ ~ ~ 0.8 0.5 0.8
    execute if entity @s[scores={General.Object.Tick=13}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=13}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=13}] run data modify entity @s transformation.scale set value [40f,40f,40f]
    execute if entity @s[scores={General.Object.Tick=13}] run data modify entity @s transformation.translation[1] set value 20f

    execute if entity @s[scores={General.Object.Tick=18}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=18}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=18}] run data modify entity @s transformation.scale set value [32f,32f,32f]
    execute if entity @s[scores={General.Object.Tick=18}] run data modify entity @s transformation.translation[1] set value 16f

#
    execute if entity @s[scores={General.Object.Tick=18}] run data modify storage asset:context this.BlowUpEnded set value true
    execute if entity @s[scores={General.Object.Tick=18}] run scoreboard players set @s General.Object.Tick 0
