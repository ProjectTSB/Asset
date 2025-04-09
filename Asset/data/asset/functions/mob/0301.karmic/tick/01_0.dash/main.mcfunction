#> asset:mob/0301.karmic/tick/01_0.dash/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_start/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 突っ込む
    execute if score @s General.Mob.Tick matches 23..33 rotated ~ 0 positioned ^ ^ ^1 run function asset:mob/0301.karmic/tick/common/tp

# モーション開始
    execute if score @s General.Mob.Tick matches 33 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_start/stop
    execute if score @s General.Mob.Tick matches 33 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/run_loop/play

# 突っ込む
    execute if score @s General.Mob.Tick matches 33..80 facing entity @p[gamemode=!spectator,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s rotated ~ 0 positioned ^ ^ ^0.6 run function asset:mob/0301.karmic/tick/common/tp
# 近づいたらスコア設定
    execute if score @s General.Mob.Tick matches 28..80 if entity @p[gamemode=!spectator,distance=..3] run scoreboard players set @s General.Mob.Tick 80
# タグ
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/0301.karmic/tick/01_0.dash/dash_skill_select
