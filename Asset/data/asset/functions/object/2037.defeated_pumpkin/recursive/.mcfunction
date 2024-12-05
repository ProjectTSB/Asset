#> asset:object/2037.defeated_pumpkin/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2037/recursive

# 演出
    execute if entity @s[scores={General.Object.Tick=61..80}] run particle cloud ~ ~-0.6 ~ 0.1 0 0.1 0.1 2 force @a
    execute if entity @s[scores={General.Object.Tick=61..80}] run particle flame ~ ~-0.6 ~ 0.1 0 0.1 0.1 2 force @a
    execute if entity @s[scores={General.Object.Tick=80..}] run particle cloud ~ ~-0.6 ~ 0.1 0 0.1 0.1 5 force @a
    execute if entity @s[scores={General.Object.Tick=80..}] run particle flame ~ ~-0.6 ~ 0.1 0 0.1 0.2 5 force @a
