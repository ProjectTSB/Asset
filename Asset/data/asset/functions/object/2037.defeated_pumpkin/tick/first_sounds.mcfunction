#> asset:object/2037.defeated_pumpkin/tick/first_sounds
#
# 初期浮遊状態のplaysound
#
# @within function asset:object/2037.defeated_pumpkin/tick/

# ロケットの最初っぽい奴
    execute if entity @s[scores={General.Object.Tick=61}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.2
    execute if entity @s[scores={General.Object.Tick=67}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.3
    execute if entity @s[scores={General.Object.Tick=73}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.4
    execute if entity @s[scores={General.Object.Tick=78}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.5
    execute if entity @s[scores={General.Object.Tick=83}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.6
    execute if entity @s[scores={General.Object.Tick=87}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.7
    execute if entity @s[scores={General.Object.Tick=91}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.8
    execute if entity @s[scores={General.Object.Tick=94}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.9
    execute if entity @s[scores={General.Object.Tick=96}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.8
    execute if entity @s[scores={General.Object.Tick=98..99}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 2.0

# 発射
    execute if entity @s[scores={General.Object.Tick=100}] run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 1 1.0
