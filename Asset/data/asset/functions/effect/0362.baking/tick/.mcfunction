#> asset:effect/0362.baking/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0362.baking/_/tick

# Tickが一度でも実行されたのならFlagを設定 (= re-given中はtickが実行されないため)
    data modify storage asset:context this.Shooting set value true

# 発射直前の音
    execute if data storage asset:context {Duration:1} run function asset:effect/0362.baking/tick/sound

# 残りDurationが1と0の時に発射
    execute if data storage asset:context {Duration:1} anchored eyes positioned ^-0.35 ^-0.25 ^ run function asset:effect/0362.baking/tick/shoot
    execute if data storage asset:context {Duration:0} anchored eyes positioned ^-0.35 ^-0.35 ^ run function asset:effect/0362.baking/tick/shoot
