#> asset:mob/0378.red_knight_v3/tick/00.opening/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/summon_1/play

# 演出
    execute if score @s AI.Tick matches 40 as @a[distance=..50] at @s run playsound minecraft:item.trident.return hostile @s ~ ~ ~ 3 0.6
    execute if score @s AI.Tick matches 40 as @a[distance=..50] at @s run playsound minecraft:entity.evoker.cast_spell hostile @s ~ ~ ~ 3 1.5
    execute if score @s AI.Tick matches 40 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal

# アニメーション第二
    execute if score @s AI.Tick matches 63 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/summon_2/play


    execute if score @s AI.Tick matches 153 run function asset:mob/0378.red_knight_v3/tick/skill_reset
