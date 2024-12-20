#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/vfx
#
# 演出
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/**

# サウンド
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# パーティクル
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.05 5
