#> asset:effect/0433.coreflame/tick/vfx/
#
# フェニックスシールドの演出
#
# @within function asset:effect/0433.coreflame/tick/

# バリアを張った音
    playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1.3
    playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.3 2
# 炎の音
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.8 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.6 1.2
# 視線先に盾
    execute anchored eyes positioned ^ ^-0.2 ^2 run function asset:effect/0433.coreflame/tick/vfx/shield
# 周囲のらせん炎
    execute rotated ~ 0 run function asset:effect/0433.coreflame/tick/vfx/spiral
# 燃え上がる感じのあれ
    particle trial_spawner_detection ~ ~ ~ 0.5 3 0.5 0.05 150
