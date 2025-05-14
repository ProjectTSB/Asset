#> asset:mob/0301.karmic/tick/01_2.dash_shot/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション変更
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_loop/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_end_sliding/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 突っ込む
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 0..15 facing entity @p[gamemode=!spectator,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s rotated ~ 0 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 0..28 at @s rotated ~ 0 positioned ^ ^ ^0.2 run function asset:mob/0301.karmic/tick/common/tp
# 撃つ
    execute if score @s General.Mob.Tick matches 9 rotated ~ -6 positioned ~ ~0.7 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot/main
    execute if score @s General.Mob.Tick matches 12 rotated ~ -6 positioned ~ ~0.7 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot/main
    execute if score @s General.Mob.Tick matches 15 rotated ~ -6 positioned ~ ~0.7 ~ positioned ^ ^ ^0.3 run function asset:mob/0301.karmic/tick/common/shot/main

# 慣性
    execute if score @s General.Mob.Tick matches 28..36 rotated ~ -20 positioned ^ ^ ^0.4 run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 38..46 rotated ~ 10 positioned ^ ^ ^0.4 run function asset:mob/0301.karmic/tick/common/tp

# リセット
    execute if score @s General.Mob.Tick matches 46 run function asset:mob/0301.karmic/tick/skill_reset
