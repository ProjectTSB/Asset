#> asset:mob/0301.karmic/tick/01_2.dash_shot/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション変更
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_loop/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_end_sliding/play

# 突っ込む
    execute if score @s General.Mob.Tick matches 0..28 rotated ~ 0 positioned ^ ^ ^0.2 run function asset:mob/0301.karmic/tick/common/tp
# 撃つ
    execute if score @s General.Mob.Tick matches 9 run say slash
    execute if score @s General.Mob.Tick matches 12 run say slash
    execute if score @s General.Mob.Tick matches 15 run say slash

    execute if score @s General.Mob.Tick matches 28..36 rotated ~ -20 positioned ^ ^ ^0.4 run function asset:mob/0301.karmic/tick/common/tp

    execute if score @s General.Mob.Tick matches 38..46 rotated ~ 10 positioned ^ ^ ^0.4 run function asset:mob/0301.karmic/tick/common/tp

# リセット
    execute if score @s General.Mob.Tick matches 46 run function asset:mob/0301.karmic/tick/skill_reset
