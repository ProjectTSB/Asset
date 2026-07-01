#> asset:effect/0373.longevity_your_thoughts/tick/set_modifier
#
# 効果の更新
#
# @within function asset:effect/0373.longevity_your_thoughts/tick/

# TickにDecreaIntervalをセット
    data modify storage asset:context this.Tick set from storage asset:context this.DecreaInterval

# スタックを減らし効果量を更新
    # もしスタックが1より多いならスタックを減らし、効果を更新する
    execute unless data storage asset:context this{Stack:..1} run function asset:effect/0373.longevity_your_thoughts/tick/update_effect
