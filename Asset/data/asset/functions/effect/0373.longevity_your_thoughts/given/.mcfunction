#> asset:effect/0373.longevity_your_thoughts/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0373.longevity_your_thoughts/_/given

# 初期化処理
    function asset:effect/0373.longevity_your_thoughts/effect/set
# TickにDecreaIntervalをセット
    data modify storage asset:context this.Tick set from storage asset:context this.DecreaInterval
