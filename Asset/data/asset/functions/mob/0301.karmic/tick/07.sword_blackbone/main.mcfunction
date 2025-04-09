#> asset:mob/0301.karmic/tick/07.sword_blackbone/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_attack2/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet rotated ~ 0 run function asset:mob/0301.karmic/tick/common/tp

# 警告
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0301.karmic/tick/07.sword_blackbone/alart

# 攻撃
    execute if score @s General.Mob.Tick matches 16 run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.8
    execute if score @s General.Mob.Tick matches 16 run function asset:mob/0301.karmic/tick/07.sword_blackbone/summon
    execute if score @s General.Mob.Tick matches 46 positioned ~ ~1.3 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot_strong/main

# リセット
    execute if score @s General.Mob.Tick matches 68 run function asset:mob/0301.karmic/tick/skill_reset
