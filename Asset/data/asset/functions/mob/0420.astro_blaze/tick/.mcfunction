#> asset:mob/0420.astro_blaze/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/420/tick

# スコア上昇
    scoreboard players add @s General.Mob.Tick 1

# 移動
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0420.astro_blaze/tick/jump

# 発射合図
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0420.astro_blaze/tick/pre_bullet
    execute if score @s General.Mob.Tick matches 120 run function asset:mob/0420.astro_blaze/tick/pre_bullet
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0420.astro_blaze/tick/pre_bullet

# 発射
    execute if score @s General.Mob.Tick matches 162 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 164 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 166 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 168 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 170 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 172 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 174 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 176 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 178 run function asset:mob/0420.astro_blaze/tick/fire
    execute if score @s General.Mob.Tick matches 180 run function asset:mob/0420.astro_blaze/tick/fire

# 一定以上ならスコアをリセットする
    execute if score @s General.Mob.Tick matches 200 run scoreboard players set @s General.Mob.Tick 0
