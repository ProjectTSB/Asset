#> asset:object/2167.ahssat_bullet_core/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2167/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 50tickから発射
    execute if score @s General.Object.Tick matches 50.. run function asset:object/2167.ahssat_bullet_core/tick/shot_interval

# 残り弾数が0なら消滅
    execute if data storage asset:context this{Bullet:0} run kill @s
