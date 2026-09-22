#> asset:object/1162.frost_flake_arrow/tick/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1162/tick

# Tick加算
    execute unless score @s General.Object.Tick matches 10.. run scoreboard players add @s General.Object.Tick 1

function asset:object/super.tick
