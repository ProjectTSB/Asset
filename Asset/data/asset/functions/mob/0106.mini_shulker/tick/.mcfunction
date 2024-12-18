#> asset:mob/0106.mini_shulker/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/106/tick

# 確率でテレポートに移行
    execute if score @s General.Mob.Tick matches 0 if predicate lib:random_pass_per/15 run scoreboard players set @s General.Mob.Tick 1000

# スキル処理
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0106.mini_shulker/tick/attack/
    execute if score @s General.Mob.Tick matches 1000 run function asset:mob/0106.mini_shulker/tick/teleport/

# 加算
    scoreboard players add @s General.Mob.Tick 1
