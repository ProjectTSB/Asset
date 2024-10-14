#> asset:object/2037.defeated_pumpkin/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2037/recursive

# 演出
    execute if entity @s[scores={General.Object.Tick=..39}] run particle cloud ~ ~-0.6 ~ 0.1 0 0.1 0.1 2 normal @a
    execute if entity @s[scores={General.Object.Tick=40..55}] run particle cloud ~ ~-0.6 ~ 0.1 0 0.1 0.1 2 normal @a
    execute if entity @s[scores={General.Object.Tick=65..}] if predicate lib:random_pass_per/60 run particle large_smoke ~ ~0.6 ~ 0.1 0 0.1 0.025 1 normal @a

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
