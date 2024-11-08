#> asset:mob/0123.lexiel_v3/tick/03.skill_sword3/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack3_1/play


    execute if score @s 3F.Tick matches 20..56 positioned ^ ^ ^0.1 run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s 3F.Tick matches 56 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack3_2/play
    execute if score @s 3F.Tick matches 78 at @s run function asset:mob/0123.lexiel_v3/tick/skill_reset
