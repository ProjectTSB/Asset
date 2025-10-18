#> asset:object/1061.azure_jelly/tick/turn/sound
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

    execute if score $Interval Temporary matches 0 run playsound ogg:ambient.nether.crimson_forest.shine1 player @a[distance=..12] ~ ~ ~ 0.05 1.3
    execute if score $Interval Temporary matches 0 run playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.5 2
    execute if score $Interval Temporary matches 0 run playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.5 1.2
    execute if score $Interval Temporary matches 0 run playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.5 0.6
