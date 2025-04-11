#> asset:mob/0301.karmic/tick/03_1.gun_loop/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/guntpstart/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/guntp/play
    execute if score @s General.Mob.Tick matches 0 run tag @s remove 8D.SkipSkillSelect

# TP
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0301.karmic/tick/common/spread_tp/main
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 攻撃
    execute if score @s General.Mob.Tick matches 13 positioned ~ ~1.3 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot_strong/main


# 次の攻撃に移行する
    execute if score @s General.Mob.Tick matches 29 run function asset:mob/0301.karmic/tick/03_1.gun_loop/skill_select
