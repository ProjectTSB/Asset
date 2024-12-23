#> asset:mob/0123.lexiel_v3/tick/01.skill_sword/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack1/play
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
# 1秒目の斬撃
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0123.lexiel_v3/tick/common/slash

# 34tick
    execute if score @s General.Mob.Tick matches 33 positioned ^ ^ ^3 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s General.Mob.Tick matches 34 run function asset:mob/0123.lexiel_v3/tick/common/slash2
# 54tick
    execute if score @s General.Mob.Tick matches 53 positioned ^ ^ ^2 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s General.Mob.Tick matches 54 run function asset:mob/0123.lexiel_v3/tick/common/slash

# リセット
    execute if score @s General.Mob.Tick matches 77 run function asset:mob/0123.lexiel_v3/tick/skill_reset
