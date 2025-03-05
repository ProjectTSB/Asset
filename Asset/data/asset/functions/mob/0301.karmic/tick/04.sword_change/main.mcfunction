#> asset:mob/0301.karmic/tick/04.sword_change/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_change/play

# 演出
    execute if score @s General.Mob.Tick matches 80 run say change

# 終わり
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/0301.karmic/tick/04.sword_change/end
