#> asset:object/1110.heavy_lava_bomb/tick/before_boom
#
# 爆発前の諸々
#
# @within function asset:object/1110.heavy_lava_bomb/tick/

# 下に落ちていく
# 水中の場合は減速する
    execute unless predicate lib:is_in_water/include_flowing if block ~ ~-0.4 ~ #lib:no_collision/ run tp @s ~ ~-0.4 ~
    execute if predicate lib:is_in_water/include_flowing if block ~ ~-0.1 ~ #lib:no_collision/ run tp @s ~ ~-0.1 ~

# 膨らむ
    execute if entity @s[scores={General.Object.Tick=1003}] run playsound entity.puffer_fish.blow_up neutral @a ~ ~ ~ 0.8 1
    execute if entity @s[scores={General.Object.Tick=1003}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=1003}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=1003}] run data modify entity @s transformation.scale set value [2.5f,2.5f,2.5f]

    execute if entity @s[scores={General.Object.Tick=1006}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=1006}] run data modify entity @s interpolation_duration set value 2
    execute if entity @s[scores={General.Object.Tick=1006}] run data modify entity @s transformation.scale set value [1.5f,1.5f,1.5f]

    execute if entity @s[scores={General.Object.Tick=1013}] run playsound entity.puffer_fish.blow_up neutral @a ~ ~ ~ 0.8 0.8
    execute if entity @s[scores={General.Object.Tick=1013}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=1013}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=1013}] run data modify entity @s transformation.scale set value [5.0f,5.0f,5.0f]

    execute if entity @s[scores={General.Object.Tick=1016}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=1016}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=1016}] run data modify entity @s transformation.scale set value [3.2f,3.2f,3.2f]
