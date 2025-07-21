#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/2
#
# 衝撃波召喚 2段階
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/
#   asset:mob/0391.axia_first/ai/animation/100_0_opening/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^12 ~ ~
# 衝撃波召喚
    execute at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/shock_wave/0.summon
# Markerを動かす
    execute rotated ~30 ~ run tp 0-0-0-0-0 ^ ^ ^12 ~ ~
# 衝撃波召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/shock_wave/0.summon
# Markerを動かす
    execute rotated ~-30 ~ run tp 0-0-0-0-0 ^ ^ ^12 ~ ~
# 衝撃波召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/shock_wave/0.summon
# Markerを動かす
    execute rotated ~60 ~ run tp 0-0-0-0-0 ^ ^ ^12 ~ ~
# 衝撃波召喚
    execute at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/shock_wave/0.summon
# Markerを動かす
    execute rotated ~-60 ~ run tp 0-0-0-0-0 ^ ^ ^12 ~ ~
# 衝撃波召喚
    execute at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/shock_wave/0.summon
# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
