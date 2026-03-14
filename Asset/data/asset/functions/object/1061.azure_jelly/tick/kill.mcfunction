#> asset:object/1061.azure_jelly/tick/kill
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# 演出
    particle scrape ~ ~1 ~ 0 0 0 6 50 normal @a
    particle dust 0.267 0.729 0.945 0.9 ~ ~1 ~ 0.5 0.6 0.4 0 50 normal @a

    playsound ogg:ambient.nether.crimson_forest.shine1 player @a[distance=..12] ~ ~ ~ 0.05 1.3
    playsound entity.dolphin.jump player @a ~ ~ ~ 0.25 0.8
    playsound entity.dolphin.jump player @a ~ ~ ~ 0.25 0.85
    playsound entity.dolphin.jump player @a ~ ~ ~ 0.25 0.9

    playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 1 2
    playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 1 1.6

# 消滅
    execute on passengers run kill @s
    kill @s
