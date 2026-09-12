#> asset:object/1186.dimension_gate/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1186/tick


# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 閉じる
    execute if score @s General.Object.Tick matches 3 run function asset:object/1186.dimension_gate/tick/close

# 消滅処理
    kill @s[scores={General.Object.Tick=6..}]
