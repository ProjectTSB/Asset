#> asset:mob/0123.lexiel_v3/tick/01.skill_sword/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack1/play

# 1秒目の斬撃
    execute if score @s 3F.Tick matches 20 run say slash1

# 34tick
    execute if score @s 3F.Tick matches 34 run say slash2
# 54tick
    execute if score @s 3F.Tick matches 54 run say slash2

# リセット
    execute if score @s 3F.Tick matches 76 run say reset
