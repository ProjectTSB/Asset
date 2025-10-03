#> asset:object/1061.azure_jelly/tick/sound
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

    execute if score $Interval Temporary matches 0 run playsound ogg:ambient.nether.crimson_forest.shine1 player @a[distance=..12] ~ ~ ~ 0.05 1.3
    execute if score $Interval Temporary matches 0 run playsound entity.dolphin.jump player @a ~ ~ ~ 0.20 0.8
    execute if score $Interval Temporary matches 1 run playsound entity.dolphin.jump player @a ~ ~ ~ 0.25 0.85
    execute if score $Interval Temporary matches 2 run playsound entity.dolphin.jump player @a ~ ~ ~ 0.30 0.9

    execute if score $Interval Temporary matches 0 run playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.5 2
    execute if score $Interval Temporary matches 0 run playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.5 1.2
    execute if score $Interval Temporary matches 0 run playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.5 0.6
