#> asset:mob/0301.karmic/tick/03_2.gun_slash/main
#
# ]
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/guntp/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/guntpend/play

# TP
    execute if score @s General.Mob.Tick matches 0 run data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0301.karmic/tick/common/spread_tp/main
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 攻撃
    execute if score @s General.Mob.Tick matches 18 rotated ~ 0 positioned ^ ^ ^4 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 18 at @s run function asset:mob/0301.karmic/tick/03_2.gun_slash/attack1

    execute if score @s General.Mob.Tick matches 30 facing entity @p[gamemode=!spectator,distance=..100] feet rotated ~ 0 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 30 if predicate api:global_vars/difficulty/min/2_hard facing entity @p[gamemode=!spectator,distance=..100] feet rotated ~ 0 positioned ^ ^ ^4 run function asset:mob/0301.karmic/tick/03_2.gun_slash/alart
    execute if score @s General.Mob.Tick matches 37 positioned ^ ^ ^4 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 37 at @s run function asset:mob/0301.karmic/tick/03_2.gun_slash/attack2

# 終わる
    execute if score @s General.Mob.Tick matches 58 run function asset:mob/0301.karmic/tick/skill_reset
