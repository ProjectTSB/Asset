#> asset:mob/0301.karmic/tick/01_1.dash_slash1/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション変更
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_loop/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_end_slash/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

    execute if score @s General.Mob.Tick matches 0..7 at @s rotated ~ 0 positioned ^ ^ ^0.2 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 8 rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/tp
# スラッシュ
    execute if score @s General.Mob.Tick matches 8 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/slash
    execute if score @s General.Mob.Tick matches 8 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/thunder
    execute if score @s General.Mob.Tick matches 9 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/thunder
    execute if score @s General.Mob.Tick matches 10 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/thunder

# 慣性
    execute if score @s General.Mob.Tick matches 9..16 rotated ~ 0 positioned ^ ^ ^0.2 run function asset:mob/0301.karmic/tick/common/tp
# リセット
    execute if score @s General.Mob.Tick matches 34 run function asset:mob/0301.karmic/tick/skill_reset
