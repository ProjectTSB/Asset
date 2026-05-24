#> asset:effect/0341.dolphin_dive/tick/predicate/on_water_surface
#
#
#
# @within function asset:effect/0341.dolphin_dive/tick/

# そもそも着地してるなら失敗
    execute if data storage api: {OnGround:1b} run return 0

# 下が水でないなら失敗
    execute unless block ~ ~-0.5 ~ water run return 0

# 目線の位置が水なら失敗
    execute anchored eyes if block ^ ^ ^ water run return 0

# 成功
    return 1
