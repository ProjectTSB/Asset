#> asset:object/2191.louvert_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2191/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルをTPさせる
    execute if score @s General.Object.Tick matches 1 as @e[type=item_display,tag=9H.ModelRoot,distance=..100] run tp @s ^ ^-1 ^ ~ ~

# アニメーション終了処理
    execute if score @s General.Object.Tick matches 111 run function asset:object/2191.louvert_death/tick/kill
