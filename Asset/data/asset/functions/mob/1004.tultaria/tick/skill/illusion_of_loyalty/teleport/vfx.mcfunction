#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/vfx
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/

# パーティクル
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
    particle minecraft:dust 1 1 1 2 ~ ~1 ~ 0.3 0.7 0.3 0 25

# サウンド
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 2
