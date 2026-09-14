#> asset:effect/0373.longevity_your_thoughts/tick/update_effect
#
# エフェクトの終了
#
# @within function asset:effect/0373.longevity_your_thoughts/tick/set_modifier

# スタックと効果量の更新
    execute store result storage asset:context Stack int 0.9999999999 run data get storage asset:context Stack
    # 補正をリセット
    function asset:effect/0373.longevity_your_thoughts/effect/reset
    # 効果量の更新
    execute unless data storage asset:context this{Stack:0} run function asset:effect/0373.longevity_your_thoughts/effect/set
