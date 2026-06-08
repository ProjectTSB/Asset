#> asset:object/1162.frost_flake_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1162/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
