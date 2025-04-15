#> asset:mob/0301.karmic/tick/03_0.gun/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/guntpstart/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 攻撃
    execute if predicate api:global_vars/difficulty/min/hard if score @s General.Mob.Tick matches 18..24 facing entity @p[gamemode=!spectator,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s rotated ~ 0 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 18 positioned ~ ~1.3 ~ positioned ^ ^ ^0.5 run function asset:mob/0301.karmic/tick/common/shot/main
    execute if score @s General.Mob.Tick matches 20 positioned ~ ~1.3 ~ positioned ^ ^ ^0.5 run function asset:mob/0301.karmic/tick/common/shot/main
    execute if score @s General.Mob.Tick matches 24 positioned ~ ~1.3 ~ positioned ^ ^ ^0.5 run function asset:mob/0301.karmic/tick/common/shot/main

# 次の攻撃に移行する
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0301.karmic/tick/03_0.gun/end
