#> asset:object/1082.soulfire_burst_bigshot/range_over/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1082/range_over

# 演出
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.9
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 1.1

# 分裂: 地面に吸われないように若干上向きに発動
    execute rotated ~ ~-15 run function asset:object/1082.soulfire_burst_bigshot/range_over/summon_small_shot
    execute rotated ~ ~-15 run function asset:object/1082.soulfire_burst_bigshot/range_over/summon_small_shot
    execute rotated ~ ~-15 run function asset:object/1082.soulfire_burst_bigshot/range_over/summon_small_shot
    execute rotated ~ ~-15 run function asset:object/1082.soulfire_burst_bigshot/range_over/summon_small_shot
    execute rotated ~ ~-15 run function asset:object/1082.soulfire_burst_bigshot/range_over/summon_small_shot

# 消失: killメソッドが爆発を兼ねてるので、メソッドの方だとマズい
    kill @s
