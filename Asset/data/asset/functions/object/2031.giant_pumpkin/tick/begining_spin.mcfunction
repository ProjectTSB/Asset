#> asset:object/2031.giant_pumpkin/tick/begining_spin
#
#
#
# @within function asset:object/2031.giant_pumpkin/tick/

#[2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
#[2.0f,0.0f,0.0f,0.0f,0.0f,-2.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
#[2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,2.0f,0.0f,0.0f,-2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
#[2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]

# 徐々に加速する縦回転をする
    data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=0}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=8}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=16}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=16}] run data modify entity @s interpolation_duration set value 7
    execute if entity @s[scores={General.Object.Tick=23}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=30}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=30}] run data modify entity @s interpolation_duration set value 6
    execute if entity @s[scores={General.Object.Tick=36}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=42}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=42}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=47}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=51}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=51}] run data modify entity @s interpolation_duration set value 4
    execute if entity @s[scores={General.Object.Tick=55}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=59}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=59}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=62}] run function asset:object/2031.giant_pumpkin/tick/set_spin

# 演出
    execute if entity @s[scores={General.Object.Tick=0}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1
    execute if entity @s[scores={General.Object.Tick=0}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 5 normal @a
    execute if entity @s[scores={General.Object.Tick=8}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.1
    execute if entity @s[scores={General.Object.Tick=8}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 6 normal @a
    execute if entity @s[scores={General.Object.Tick=16}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.2
    execute if entity @s[scores={General.Object.Tick=16}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 7 normal @a
    execute if entity @s[scores={General.Object.Tick=23}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.3
    execute if entity @s[scores={General.Object.Tick=23}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 8 normal @a
    execute if entity @s[scores={General.Object.Tick=30}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.4
    execute if entity @s[scores={General.Object.Tick=30}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 9 normal @a
    execute if entity @s[scores={General.Object.Tick=36}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.5
    execute if entity @s[scores={General.Object.Tick=36}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 10 normal @a
    execute if entity @s[scores={General.Object.Tick=42}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.6
    execute if entity @s[scores={General.Object.Tick=42}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 11 normal @a
    execute if entity @s[scores={General.Object.Tick=47}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.7
    execute if entity @s[scores={General.Object.Tick=47}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 12 normal @a
    execute if entity @s[scores={General.Object.Tick=51}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.8
    execute if entity @s[scores={General.Object.Tick=51}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 13 normal @a
    execute if entity @s[scores={General.Object.Tick=55}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.9
    execute if entity @s[scores={General.Object.Tick=55}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 14 normal @a
    execute if entity @s[scores={General.Object.Tick=59}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 2
    execute if entity @s[scores={General.Object.Tick=59}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 15 normal @a
