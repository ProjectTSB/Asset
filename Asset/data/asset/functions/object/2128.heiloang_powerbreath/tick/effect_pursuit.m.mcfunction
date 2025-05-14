#> asset:object/2128.heiloang_powerbreath/tick/effect_pursuit.m
#
# Objectのtick時の処理
#
# @within asset:object/2128.heiloang_powerbreath/tick/

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    $execute rotated ~ ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~ ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~ ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~ ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~90 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~90 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~90 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~90 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~180 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~180 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~180 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~180 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~270 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~270 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~270 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~270 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20

# ノーマル以上では8Way
    execute if predicate api:global_vars/difficulty/1_normal run return 0
    $execute rotated ~45 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~45 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~45 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~45 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~135 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~135 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~135 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~135 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~225 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~225 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~225 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~225 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~315 ~ positioned ^ ^ ^$(Distance) run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~315 ~ positioned ^ ^ ^$(Distance) run particle explosion ~ ~0.5 ~ 2 2 2 0 20
    $execute rotated ~315 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle flash ~ ~0.5 ~ 1 1 1 0 4
    $execute rotated ~315 ~ positioned ^ ^ ^$(Distance) positioned ^ ^ ^2.5 run particle explosion ~ ~0.5 ~ 2 2 2 0 20
