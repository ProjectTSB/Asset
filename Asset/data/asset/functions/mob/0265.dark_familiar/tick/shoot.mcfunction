#> asset:mob/0265.dark_familiar/tick/shoot
#
# 召喚する
#
# @within function asset:mob/0265.dark_familiar/tick/

# 召喚
    data modify storage api: Argument.ID set value 266
    execute anchored eyes positioned ^ ^ ^ run function api:mob/summon

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1.5 2
