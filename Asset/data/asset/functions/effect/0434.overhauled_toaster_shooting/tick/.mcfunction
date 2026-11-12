#> asset:effect/0434.overhauled_toaster_shooting/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0434.overhauled_toaster_shooting/_/tick

#> Private
# @private
    #declare storage asset:temp E434

# Stackの1..7を配列の添字の0..6へ変換する
    execute store result storage asset:temp E434.Index int 0.9999999999 run data get storage asset:context Stack

# 発射直前・発射中の音
    execute anchored eyes positioned ^-0.35 ^ ^0.5 run function asset:effect/0434.overhauled_toaster_shooting/tick/sound

# 残りDurationが5から0の間に1枚ずつ発射する
    execute if data storage asset:context {Duration:5} anchored eyes positioned ^-0.35 ^-0.05 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m with storage asset:temp E434
    execute if data storage asset:context {Duration:4} anchored eyes positioned ^-0.35 ^-0.15 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m with storage asset:temp E434
    execute if data storage asset:context {Duration:3} anchored eyes positioned ^-0.35 ^-0.25 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m with storage asset:temp E434
    execute if data storage asset:context {Duration:2} anchored eyes positioned ^-0.35 ^-0.35 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m with storage asset:temp E434
    execute if data storage asset:context {Duration:1} anchored eyes positioned ^-0.35 ^-0.45 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m with storage asset:temp E434
    execute if data storage asset:context {Duration:0} anchored eyes positioned ^-0.35 ^-0.55 ^ run function asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m with storage asset:temp E434

    data remove storage asset:temp E434
