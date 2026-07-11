#> asset:effect/0347.snowball_canon/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0347.snowball_canon/_/tick

# Durationが1なら発射する
    execute if data storage asset:context {Duration:1} anchored eyes positioned ^-0.45 ^-0.2 ^-0.1 rotated ~3 ~ run function asset:effect/0347.snowball_canon/tick/shoot
