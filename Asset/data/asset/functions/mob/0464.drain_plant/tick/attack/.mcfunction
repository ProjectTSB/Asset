#> asset:mob/0464.drain_plant/tick/attack/
#
#
#
# @within function asset:mob/0464.drain_plant/tick/

# Blesslessに限り、プレイヤーが遠かったら地面に潜る
    execute if score @s General.Mob.Tick matches 5 unless entity @p[gamemode=!spectator,distance=..10] run function asset:mob/0464.drain_plant/tick/reset/

# 時間経過で開花
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0464.drain_plant/tick/change_model/bloom/0
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0464.drain_plant/tick/change_model/bloom/1

# 攻撃
    execute if score @s General.Mob.Tick matches 35 run function asset:mob/0464.drain_plant/tick/attack/announce
    execute if score @s General.Mob.Tick matches 55 run function asset:mob/0464.drain_plant/tick/attack/attack

# リセット
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0464.drain_plant/tick/change_model/close/0
    execute if score @s General.Mob.Tick matches 120 run function asset:mob/0464.drain_plant/tick/change_model/close/1

# リセット
    execute if score @s General.Mob.Tick matches 125.. run function asset:mob/0464.drain_plant/tick/reset/
