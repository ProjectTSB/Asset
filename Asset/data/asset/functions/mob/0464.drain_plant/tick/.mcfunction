#> asset:mob/0464.drain_plant/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/464/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 時間経過で開花
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0464.drain_plant/tick/change_model/bloom/0
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/0464.drain_plant/tick/change_model/bloom/1

# リセット
    execute if score @s General.Mob.Tick matches 160.. run function asset:mob/0464.drain_plant/tick/change_model/0
    execute if score @s General.Mob.Tick matches 160.. run scoreboard players set @s General.Mob.Tick 0
