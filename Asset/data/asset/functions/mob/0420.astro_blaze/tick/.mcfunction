#> asset:mob/0420.astro_blaze/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/420/tick

# スコア上昇
    scoreboard players add @s General.Mob.Tick 1

# 移動
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0420.astro_blaze/tick/jump

# 射線上にプレイヤーが存在しない場合、スコアを戻す
    execute if score @s General.Mob.Tick matches 100 unless function asset:mob/0420.astro_blaze/tick/check_through/ run scoreboard players set @s General.Mob.Tick 0

# 発射合図
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0420.astro_blaze/tick/pre_bullet
    execute if score @s General.Mob.Tick matches 120 run function asset:mob/0420.astro_blaze/tick/pre_bullet
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0420.astro_blaze/tick/pre_bullet

# 弾数をセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0420.astro_blaze/tick/set_bullet

# 弾数が0でなければ発射
    execute unless data storage asset:context this{Bullet:0} run function asset:mob/0420.astro_blaze/tick/shoot/
