#> asset:mob/0311.blazing_inferno/tick/phase_transition/roar
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/phase_transition/

# パーティクル
    particle minecraft:flame ~ ~1.5 ~ 0 0 0 0.3 50
    particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.3 20
    particle minecraft:trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0 100

# サウンド
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.set_spawn3 hostile @a ~ ~ ~ 2 1.5
