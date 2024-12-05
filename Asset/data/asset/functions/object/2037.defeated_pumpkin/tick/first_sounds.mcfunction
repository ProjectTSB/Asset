#> asset:object/2037.defeated_pumpkin/tick/first_sounds
#
# 初期浮遊状態のplaysound
#
# @within function asset:object/2037.defeated_pumpkin/tick/

# ロケットの最初っぽい奴
    execute if entity @s[scores={General.Object.Tick=61}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.5
    execute if entity @s[scores={General.Object.Tick=67}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.55
    execute if entity @s[scores={General.Object.Tick=73}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.60
    execute if entity @s[scores={General.Object.Tick=78}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.65
    execute if entity @s[scores={General.Object.Tick=83}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.70
    execute if entity @s[scores={General.Object.Tick=87}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.85
    execute if entity @s[scores={General.Object.Tick=91}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.90
    execute if entity @s[scores={General.Object.Tick=94}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 0.95
    execute if entity @s[scores={General.Object.Tick=96}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.00
    execute if entity @s[scores={General.Object.Tick=98..99}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.05

# 発射
    execute if entity @s[scores={General.Object.Tick=100}] run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 1 1.0
