#> asset:object/1166.after_glow/tick/vfx/boom
#
# Objectのビームの演出(爆風)
#
# @within asset:object/1166.after_glow/tick/beem

# 爆風
    particle minecraft:end_rod ~ ~15 ~ 1 15 1 0.1 600
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 3
    particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.1 100
    particle minecraft:cloud ~ ~0.5 ~ 2.5 0.2 2.5 0.1 300
    particle minecraft:dust 1.0 0.5 0.0 1.5 ~ ~0.5 ~ 2.5 0.2 2.5 0.2 400
    particle minecraft:electric_spark ~ ~0.5 ~ 2.5 0.5 2.5 0.1 200
