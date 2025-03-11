#> asset:artifact/1206.triple_sparkle_bomb/trigger/loop/main
#
#
#
# @within function asset:artifact/1206.triple_sparkle_bomb/trigger/loop/

# スコア
    scoreboard players add @s XI.Tick 1

# 2,5tickに投げる
    execute if score @s XI.Tick matches 2 anchored eyes positioned ^ ^-0.2 ^0.5 run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb
    execute if score @s XI.Tick matches 5 anchored eyes positioned ^ ^-0.2 ^0.5 run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb

# ループ
    schedule function asset:artifact/1206.triple_sparkle_bomb/trigger/loop/ 1t replace

# リセット
    execute if score @s XI.Tick matches 5.. run scoreboard players reset @s XI.Tick
