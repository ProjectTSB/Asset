#> asset:object/2031.giant_pumpkin/tick/begining_spin
#
#
#
# @within function asset:object/2031.giant_pumpkin/tick/

#[2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
#[2.0f,0.0f,0.0f,0.0f,0.0f,-2.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
#[2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,2.0f,0.0f,0.0f,-2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
#[2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]

# 徐々に加速する縦回転をする
    data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=0}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-2.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={General.Object.Tick=8}] run data modify entity @s interpolation_duration set value 7
    execute if entity @s[scores={General.Object.Tick=16}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,2.0f,0.0f,0.0f,-2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={General.Object.Tick=16}] run data modify entity @s interpolation_duration set value 6
    execute if entity @s[scores={General.Object.Tick=23}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    #execute if entity @s[scores={General.Object.Tick=23}] run data modify entity @s interpolation_duration set value 6
    execute if entity @s[scores={General.Object.Tick=30}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={General.Object.Tick=30}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=36}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-2.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    #execute if entity @s[scores={General.Object.Tick=36}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=42}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,2.0f,0.0f,0.0f,-2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={General.Object.Tick=42}] run data modify entity @s interpolation_duration set value 4
    execute if entity @s[scores={General.Object.Tick=47}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    #execute if entity @s[scores={General.Object.Tick=47}] run data modify entity @s interpolation_duration set value 4
    execute if entity @s[scores={General.Object.Tick=51}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={General.Object.Tick=51}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=55}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-2.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    #execute if entity @s[scores={General.Object.Tick=55}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=59}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,2.0f,0.0f,0.0f,-2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    #execute if entity @s[scores={General.Object.Tick=59}] run data modify entity @s interpolation_duration set value 2
    execute if entity @s[scores={General.Object.Tick=62}] run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
