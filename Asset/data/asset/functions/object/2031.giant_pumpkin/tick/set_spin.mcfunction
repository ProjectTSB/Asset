#> asset:object/2031.giant_pumpkin/tick/set_spin
#
# 回転をセットする
#
# @within function
#   asset:object/2031.giant_pumpkin/tick/begining_spin
#   asset:object/2031.giant_pumpkin/tick/high_speed_spin

# スコアを加算
    scoreboard players add @s 2031.SpinCount 1

# スコアに応じてtansformationをセット
    execute if entity @s[scores={2031.SpinCount=1}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-3.0f,0.0f,0.0f,3.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2031.SpinCount=2}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,-3.0f,0.0f,0.0f,0.0f,-0.0f,-3.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2031.SpinCount=3}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,3.0f,0.0f,0.0f,-3.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2031.SpinCount=4}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,1.0f]

# スコアをリセット
    execute if entity @s[scores={2031.SpinCount=4..}] run scoreboard players reset @s 2031.SpinCount
