#> asset:object/1076.airlift/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1076/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# アプローチ開始
    execute if score @s General.Object.Tick matches 1..20 run function asset:object/1076.airlift/tick/approach

# 着地タイミングで滑走動作へ
    execute if score @s General.Object.Tick matches 21..60 run function asset:object/1076.airlift/tick/landing

# 停止タイミングで補給
    execute if score @s General.Object.Tick matches 80 run function asset:object/1076.airlift/tick/supply

# 消滅処理
    kill @s[scores={General.Object.Tick=150..}]
