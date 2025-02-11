#> asset:mob/0106.mini_shulker/tick/wait
#
# 待機処理
#
# @within asset:mob/0106.mini_shulker/tick/

# execute if score @s General.Mob.Tick matches 0 run function asset:mob/0106.mini_shulker/tick/shell/close
execute if score @s General.Mob.Tick matches 20 run function asset:mob/0106.mini_shulker/tick/shell/half

execute if score @s General.Mob.Tick matches 50 run function asset:mob/0106.mini_shulker/tick/reset
