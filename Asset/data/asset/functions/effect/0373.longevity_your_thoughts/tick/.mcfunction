#> asset:effect/0373.longevity_your_thoughts/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0373.longevity_your_thoughts/_/tick

# DecreaIntervalTickごとにスタックを減らし効果を更新する
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
    execute if data storage asset:context this{Tick:0} run function asset:effect/0373.longevity_your_thoughts/tick/set_modifier
