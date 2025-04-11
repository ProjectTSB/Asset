#> asset:mob/0437.lawless_iron_doll/tick/phase_transition/vfx
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/phase_transition/

# サウンド
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.8

# パーティクル
    particle minecraft:dust 0.8 0 1 1.5 ~ ~1.5 ~ 1.5 1.5 1.5 1 100 force @a[distance=..64]
    particle minecraft:reverse_portal ~ ~1.5 ~ 0 0 0 5 50
