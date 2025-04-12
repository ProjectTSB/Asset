#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element

# スコア増加
    scoreboard players add @s BE.Dummy 1

# 実行
    execute if score @s BE.Dummy matches 1 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 2 1.5
    $execute if score @s BE.Dummy matches 1 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element_circle_0.m {Color:"$(Color)"}
    $execute if score @s BE.Dummy matches 2 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element_circle_1.m {Color:"$(Color)"}
    $execute if score @s BE.Dummy matches 3 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element_circle_2.m {Color:"$(Color)"}
    $execute if score @s BE.Dummy matches 4 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element_circle_3.m {Color:"$(Color)"}
    $execute if score @s BE.Dummy matches 5 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element_circle_4.m {Color:"$(Color)"}
    $execute if score @s BE.Dummy matches 6 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element_circle_5.m {Color:"$(Color)"}

# 終了
    execute if score @s BE.Dummy matches 40.. run scoreboard players set @s BE.Dummy 0
