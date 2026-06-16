#> asset:mob/0464.drain_plant/tick/attack/
#
#
#
# @within function asset:mob/0464.drain_plant/tick/

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 時間経過で開花
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0464.drain_plant/tick/change_model/bloom/0
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/0464.drain_plant/tick/change_model/bloom/1

# 攻撃
    execute if score @s General.Mob.Tick matches 90 run function asset:mob/0464.drain_plant/tick/attack/announce
    execute if score @s General.Mob.Tick matches 130 run function asset:mob/0464.drain_plant/tick/attack/attack

# リセット
    execute if score @s General.Mob.Tick matches 200.. run function asset:mob/0464.drain_plant/tick/change_model/0
    execute if score @s General.Mob.Tick matches 200.. run scoreboard players set @s General.Mob.Tick 0
