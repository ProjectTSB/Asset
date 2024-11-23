#> asset:object/2090.magic_square/tick/spin
#
#
#
# @within function asset:object/2090.magic_square/tick/

# 回転のカウント
    scoreboard players add @s 2090.SpinCount 1

# start_interpolation
    data modify entity @s start_interpolation set value 0

# 回転 フィールドによって回転方向を変える
# 2,4は共通
    execute if entity @s[scores={2090.SpinCount=1}] unless data storage asset:context this{LeftRotate:true} run data modify entity @s transformation set value [-0.0f,1.0f,0.0f,0.0f,-1.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2090.SpinCount=1}] if data storage asset:context this{LeftRotate:true} run data modify entity @s transformation set value [-0.0f,-1.0f,0.0f,0.0f,1.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2090.SpinCount=2}] run data modify entity @s transformation set value [-1.0f,-0.0f,0.0f,0.0f,0.0f,-1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2090.SpinCount=3}] unless data storage asset:context this{LeftRotate:true} run data modify entity @s transformation set value [-0.0f,-1.0f,0.0f,0.0f,1.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2090.SpinCount=3}] if data storage asset:context this{LeftRotate:true} run data modify entity @s transformation set value [-0.0f,1.0f,0.0f,0.0f,-1.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={2090.SpinCount=4}] run data modify entity @s transformation set value [1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]

# Scaleだけ別で設定し直す
    data modify entity @s transformation.scale set from storage asset:context this.Scale

# 回転カウントのリセット
    execute if entity @s[scores={2090.SpinCount=4..}] run scoreboard players reset @s 2090.SpinCount
