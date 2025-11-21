#> asset:mob/0420.astro_blaze/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/420/tick

#> Private
# @private
    #declare score_holder $Interval

# スコア上昇
    scoreboard players add @s General.Mob.Tick 1

# 移動
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0420.astro_blaze/tick/jump

# 斜線上にプレイヤーが存在しない場合、スコアを戻す
    execute if score @s General.Mob.Tick matches 100 unless function asset:mob/0420.astro_blaze/tick/check_through/ run scoreboard players set @s General.Mob.Tick 0

# 発射合図
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0420.astro_blaze/tick/pre_bullet
    execute if score @s General.Mob.Tick matches 120 run function asset:mob/0420.astro_blaze/tick/pre_bullet
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0420.astro_blaze/tick/pre_bullet

# 弾数をセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0420.astro_blaze/tick/calc_bullet

# 弾数が0ならreturn
    execute if data storage asset:context this{Bullet:0} run return fail

# 発射
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0420.astro_blaze/tick/fire
    scoreboard players reset $Interval Temporary

# 弾数が0ならスコア初期化
    execute if data storage asset:context this{Bullet:0} run scoreboard players set @s General.Mob.Tick 0
