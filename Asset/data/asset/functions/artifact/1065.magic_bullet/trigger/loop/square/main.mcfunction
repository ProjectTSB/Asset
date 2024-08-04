#> asset:artifact/1065.magic_bullet/trigger/loop/square/main
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/

# スコア
    scoreboard players add @s TL.Tick 1

# 魔法陣の表示処理
# 何番目の魔法陣かで表示タイミングが異なる

# 1つ目
    execute if entity @s[scores={TL.SquareCount=1,TL.Tick=2}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={TL.SquareCount=1,TL.Tick=2}] run data modify entity @s transformation.scale set value [0.9d,0.9d,0.01d]

# 2つ目
    execute if entity @s[scores={TL.SquareCount=2,TL.Tick=4}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={TL.SquareCount=2,TL.Tick=4}] run data modify entity @s transformation.scale set value [1.8d,1.8d,0.01d]

# 3つ目
    execute if entity @s[scores={TL.SquareCount=3,TL.Tick=6}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={TL.SquareCount=3,TL.Tick=6}] run data modify entity @s transformation.scale set value [1.2d,1.2d,0.01d]

# 4つ目
   # execute if entity @s[scores={TL.SquareCount=4,TL.Tick=8}] run data modify entity @s start_interpolation set value 0
    #execute if entity @s[scores={TL.SquareCount=4,TL.Tick=8}] run data modify entity @s transformation.scale set value [0.8d,0.8d,0.4d]

# 消える
    execute if entity @s[scores={TL.Tick=37}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={TL.Tick=37}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={TL.Tick=37}] run data modify entity @s transformation.scale set value [0d,0d,0.01d]

# 消滅
    execute if entity @s[scores={TL.Tick=40..}] run kill @s

# ループ処理
    schedule function asset:artifact/1065.magic_bullet/trigger/loop/ 1t replace
