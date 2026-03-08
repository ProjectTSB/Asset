#> asset:object/2272.player_target_line/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2272/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 表示
    execute if score @s General.Object.Tick matches 2 run function asset:object/2272.player_target_line/tick/show

# ターゲット
    function asset:object/2272.player_target_line/tick/rotate.m with storage asset:context this

# 消滅処理
    execute if score @s General.Object.Tick >= @s 2272.Tick run kill @s
