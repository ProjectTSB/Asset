#> asset:mob/0301.karmic/tick/02.slash/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/attack/play

# tp
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0301.karmic/tick/common/spread_tp/main
# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 攻撃
    execute if score @s General.Mob.Tick matches 18 rotated ~ 0 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 18 run function asset:mob/0301.karmic/tick/02.slash/attack1
    execute if score @s General.Mob.Tick matches 25 rotated ~ 0 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 25 run function asset:mob/0301.karmic/tick/02.slash/attack1

    execute if score @s General.Mob.Tick matches 34..50 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 撃つ
    execute if score @s General.Mob.Tick matches 58 rotated ~ 0 positioned ^ ^ ^-2 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 58 positioned ~ ~1.3 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot_strong/main

# リセット
    execute if score @s General.Mob.Tick matches 73 run function asset:mob/0301.karmic/tick/skill_reset
