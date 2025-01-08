#> asset:mob/0106.mini_shulker/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/106/hurt

# 確率でテレポート処理に強制移行
    execute if predicate lib:random_pass_per/15 run scoreboard players set @s General.Mob.Tick 1000
