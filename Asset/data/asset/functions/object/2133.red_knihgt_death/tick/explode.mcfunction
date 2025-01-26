#> asset:object/2133.red_knihgt_death/tick/explode
#
#
#
# @within function asset:object/2133.red_knihgt_death/tick/

# パーティクル
    particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 1 force @a[distance=..30]
    particle minecraft:large_smoke ~ ~1 ~ 0.1 0.1 0.1 0.2 10

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 0.6
