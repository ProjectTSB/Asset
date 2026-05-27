#> asset:effect/0341.dolphin_dive/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0341.dolphin_dive/_/tick

# 演出
    particle dolphin ~ ~1 ~ 0.4 0.3 0.4 0 5 normal @a
    particle dust 0.4 1 1 1 ~ ~1 ~ 0.3 0.4 0.3 0 2 normal @a

# 使用地点が水面なら、一度は空中に飛び出たかを判定する
# 足元と目線の位置が#no_collision/without_fluidならokとする
    execute if data storage asset:context this{UseOnWaterSurface:true} if block ~ ~ ~ #lib:no_collision/without_fluid anchored eyes if block ^ ^ ^ #lib:no_collision/without_fluid run data modify storage asset:context this.JumpedToAir set value true

# 使用地点が水面なら、最初の数tickは着地検知を無効とする
    execute if data storage asset:context this{UseOnWaterSurface:true} store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay
    execute if data storage asset:context this{UseOnWaterSurface:true} unless data storage asset:context this{Delay:0} run return fail

# 着地検知
    function api:data_get/on_ground

# 着地 (水中を除く)
    execute if data storage api: {OnGround:1b} unless block ~ ~ ~ water run function asset:effect/0341.dolphin_dive/tick/landing

# 使用地点が水面でない && OnGround:0b && すぐ下が水 && 頭が水に触れていない なら水面とみなして発動
    execute if function asset:effect/0341.dolphin_dive/tick/predicate/on_water_surface unless data storage asset:context this{UseOnWaterSurface:true} align y run function asset:effect/0341.dolphin_dive/tick/landing

# 使用地点が水面である && OnGround:0b && 一度は空中に跳んだ && すぐ下が水 && 頭が水に触れていない なら水面とみなして発動
    execute if function asset:effect/0341.dolphin_dive/tick/predicate/on_water_surface if data storage asset:context this{UseOnWaterSurface:true,JumpedToAir:true} align y run function asset:effect/0341.dolphin_dive/tick/landing
