#> asset:object/2037.defeated_pumpkin/tick/first_sounds
#
# 初期浮遊状態のplaysound
#
# @within function asset:object/2037.defeated_pumpkin/tick/

# ロケットの最初っぽい奴
    execute if entity @s[scores={General.Object.Tick=1}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.2
    execute if entity @s[scores={General.Object.Tick=7}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.3
    execute if entity @s[scores={General.Object.Tick=13}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.4
    execute if entity @s[scores={General.Object.Tick=18}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.5
    execute if entity @s[scores={General.Object.Tick=23}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.6
    execute if entity @s[scores={General.Object.Tick=27}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.7
    execute if entity @s[scores={General.Object.Tick=31}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.8
    execute if entity @s[scores={General.Object.Tick=34}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.9
    execute if entity @s[scores={General.Object.Tick=36}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 1.8
    execute if entity @s[scores={General.Object.Tick=38..39}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.15 2.0

# 発射
    execute if entity @s[scores={General.Object.Tick=40}] run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 1 1.0
