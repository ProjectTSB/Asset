#> asset:effect/0416.toaster_shooting/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0416.toaster_shooting/_/tick

# 発射直前の音
    execute if data storage asset:context {Duration:1} run function asset:effect/0416.toaster_shooting/tick/sound

# 残りDurationが1と0の時に発射
    execute if data storage asset:context {Duration:1} anchored eyes positioned ^-0.35 ^-0.25 ^ run function asset:effect/0416.toaster_shooting/tick/shoot
    execute if data storage asset:context {Duration:0} anchored eyes positioned ^-0.35 ^-0.35 ^ run function asset:effect/0416.toaster_shooting/tick/shoot
