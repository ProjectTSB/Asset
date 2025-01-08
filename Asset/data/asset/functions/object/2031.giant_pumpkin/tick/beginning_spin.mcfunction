#> asset:object/2031.giant_pumpkin/tick/beginning_spin
#
#
#
# @within function asset:object/2031.giant_pumpkin/tick/

# 徐々に加速する縦回転をする
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s interpolation_duration set value 15
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=18}] run data modify entity @s interpolation_duration set value 8
    execute if entity @s[scores={General.Object.Tick=18}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=26}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=26}] run data modify entity @s interpolation_duration set value 7
    execute if entity @s[scores={General.Object.Tick=33}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=40}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=40}] run data modify entity @s interpolation_duration set value 6
    execute if entity @s[scores={General.Object.Tick=46}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=52}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=52}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=57}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=62}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=62}] run data modify entity @s interpolation_duration set value 4
    execute if entity @s[scores={General.Object.Tick=66}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=70}] run function asset:object/2031.giant_pumpkin/tick/set_spin
    execute if entity @s[scores={General.Object.Tick=70}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=73}] run function asset:object/2031.giant_pumpkin/tick/set_spin

# スコアが一定値(73)まで行ったなら高速回転Tagを付与
    execute if entity @s[scores={General.Object.Tick=73}] run tag @s add 2031.HighSpeedSpinning
    execute if entity @s[scores={General.Object.Tick=73}] run data modify storage asset:context this.MovePerStep set value 1

# 演出
    #execute if entity @s[scores={General.Object.Tick=0}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1
    #execute if entity @s[scores={General.Object.Tick=0}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 5 normal @a
    execute if entity @s[scores={General.Object.Tick=18}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.1
    execute if entity @s[scores={General.Object.Tick=18}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 6 normal @a
    execute if entity @s[scores={General.Object.Tick=26}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.2
    execute if entity @s[scores={General.Object.Tick=26}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 7 normal @a
    execute if entity @s[scores={General.Object.Tick=33}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.3
    execute if entity @s[scores={General.Object.Tick=33}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 8 normal @a
    execute if entity @s[scores={General.Object.Tick=40}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.4
    execute if entity @s[scores={General.Object.Tick=40}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 9 normal @a
    execute if entity @s[scores={General.Object.Tick=46}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.5
    execute if entity @s[scores={General.Object.Tick=46}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 10 normal @a
    execute if entity @s[scores={General.Object.Tick=52}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.6
    execute if entity @s[scores={General.Object.Tick=57}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 11 normal @a
    execute if entity @s[scores={General.Object.Tick=57}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.7
    execute if entity @s[scores={General.Object.Tick=62}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 12 normal @a
    execute if entity @s[scores={General.Object.Tick=62}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.8
    execute if entity @s[scores={General.Object.Tick=66}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 13 normal @a
    execute if entity @s[scores={General.Object.Tick=66}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 1.9
    execute if entity @s[scores={General.Object.Tick=70}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 14 normal @a
    execute if entity @s[scores={General.Object.Tick=70}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 0.15 2.0
    execute if entity @s[scores={General.Object.Tick=73}] run particle cloud ~ ~0.2 ~ 0.1 0 0.1 0.2 15 normal @a
