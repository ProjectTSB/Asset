#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/vfx_heavy
#
# フィニッシュ用サウンド
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick


# サウンド
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1

# パーティクル
    particle minecraft:lava ~ ~ ~ 0 0 0 0.05 5
