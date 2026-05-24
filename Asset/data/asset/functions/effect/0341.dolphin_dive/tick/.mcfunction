#> asset:effect/0341.dolphin_dive/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0341.dolphin_dive/_/tick

# 演出
    particle dolphin ~ ~1 ~ 0.4 0.3 0.4 0 5 normal @a
    particle dust 0.4 1 1 1 ~ ~1 ~ 0.3 0.4 0.3 0 2 normal @a

# 着地検知
    function api:data_get/on_ground

# 着地
    execute if data storage api: {OnGround:1b} run function asset:effect/0341.dolphin_dive/tick/landing

# OnGround:0bかつすぐ下が水なら水面とみなして発動
    execute if data storage api: {OnGround:0b} if block ~ ~-0.5 ~ water align y run function asset:effect/0341.dolphin_dive/tick/landing
