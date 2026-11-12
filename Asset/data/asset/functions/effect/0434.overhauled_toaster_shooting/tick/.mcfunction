#> asset:effect/0434.overhauled_toaster_shooting/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0434.overhauled_toaster_shooting/_/tick

# 発射直前・発射中の音
    execute anchored eyes positioned ^-0.35 ^ ^0.5 run function asset:effect/0434.overhauled_toaster_shooting/tick/sound

# 残りDurationが1と0の時に発射
    execute if data storage asset:context {Duration:5} anchored eyes positioned ^-0.35 ^-0.05 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot
    execute if data storage asset:context {Duration:4} anchored eyes positioned ^-0.35 ^-0.15 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot
    execute if data storage asset:context {Duration:3} anchored eyes positioned ^-0.35 ^-0.25 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot
    execute if data storage asset:context {Duration:2} anchored eyes positioned ^-0.35 ^-0.35 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot
    execute if data storage asset:context {Duration:1} anchored eyes positioned ^-0.35 ^-0.45 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot
    execute if data storage asset:context {Duration:0} anchored eyes positioned ^-0.35 ^-0.55 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot
