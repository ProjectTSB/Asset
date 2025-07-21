#> asset:effect/0261.gale_blessing/modfier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0261.gale_blessing/given/
#   asset:effect/0261.gale_blessing/re-given/
#   asset:effect/0261.gale_blessing/tick/

# 演出
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.3
    particle dust 0.2 0.9 10000000 0.7 ~ ~1 ~ 0.5 0.8 0.5 1 100
# タグ付け
    tag @s add 79.NotInBattle
# エフェクトを表示する
    data modify storage asset:effect TargetEffect.Visible set value true
# 移動速度を(40*Stack)%付与
    execute store result storage asset:temp Effect.Value double 0.4 run data get storage asset:context Stack 1
    function asset:effect/0261.gale_blessing/modfier/add.m with storage asset:temp Effect
# リセット
    data remove storage asset:temp Effect
