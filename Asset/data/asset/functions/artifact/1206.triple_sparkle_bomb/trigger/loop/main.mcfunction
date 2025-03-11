#> asset:artifact/1206.triple_sparkle_bomb/trigger/loop/main
#
#
#
# @within function asset:artifact/1206.triple_sparkle_bomb/trigger/loop/

# スコア
    scoreboard players add @s XI.Tick 1

# 2個目
    execute if score @s XI.Tick matches 3 run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.8 0.55
    execute if score @s XI.Tick matches 3 anchored eyes positioned ^ ^-0.2 ^0.5 run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb

# 3個目
    execute if score @s XI.Tick matches 6 run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.8 0.575
    execute if score @s XI.Tick matches 6 anchored eyes positioned ^ ^-0.2 ^0.5 run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb

# ループ
    schedule function asset:artifact/1206.triple_sparkle_bomb/trigger/loop/ 1t replace

# リセット
    execute if score @s XI.Tick matches 6.. run scoreboard players reset @s XI.Tick
