#> asset:object/2153.haruclaire_thrown_rod/tick/spin
#
# Objectのtick時の処理
#
# @within asset:object/2153.haruclaire_thrown_rod/tick/

# スコア増加
    scoreboard players add @s 2153.Sub 1
    execute if entity @s[scores={2153.Sub=5..}] run scoreboard players set @s 2153.Sub 1

# 回転
    data modify entity @s start_interpolation set value 0
    execute if entity @s[tag=!2153.Inverse,scores={2153.Sub=..1}] run data modify entity @s transformation set value [0.6090f,0.5650f,-0.5566f,0.0000f,-0.3666f,0.8229f,0.4341f,0.0000f,0.7033f,-0.0603f,0.7083f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=!2153.Inverse,scores={2153.Sub=2}] run data modify entity @s transformation set value [-0.5221f,0.6890f,-0.5027f,0.0000f,0.4673f,0.7242f,0.5071f,0.0000f,0.7135f,0.0298f,-0.7001f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=!2153.Inverse,scores={2153.Sub=3}] run data modify entity @s transformation set value [-0.4766f,0.6103f,0.6328f,0.0000f,0.5461f,0.7696f,-0.3309f,0.0000f,-0.6889f,0.1878f,-0.7001f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=!2153.Inverse,scores={2153.Sub=4..}] run data modify entity @s transformation set value [0.6545f,0.4863f,0.5789f,0.0000f,-0.2879f,0.8683f,-0.4039f,0.0000f,-0.6991f,0.0977f,0.7083f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=2153.Inverse,scores={2153.Sub=..1}] run data modify entity @s transformation set value [0.6238f,-0.3983f,-0.6725f,0.0000f,0.3532f,0.9112f,-0.2120f,0.0000f,0.6972f,-0.1053f,0.7091f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=2153.Inverse,scores={2153.Sub=2}] run data modify entity @s transformation set value [-0.6865f,-0.1511f,-0.7112f,0.0000f,-0.1116f,0.9885f,-0.1023f,0.0000f,0.7185f,0.0091f,-0.6955f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=2153.Inverse,scores={2153.Sub=3}] run data modify entity @s transformation set value [-0.7449f,-0.2522f,0.6177f,0.0000f,-0.0105f,0.9301f,0.3671f,0.0000f,-0.6671f,0.2670f,-0.6955f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[tag=2153.Inverse,scores={2153.Sub=4..}] run data modify entity @s transformation set value [0.5655f,-0.4994f,0.6564f,0.0000f,0.4543f,0.8528f,0.2574f,0.0000f,-0.6884f,0.1526f,0.7091f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
