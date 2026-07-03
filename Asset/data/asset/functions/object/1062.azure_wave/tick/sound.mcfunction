#> asset:object/1062.azure_wave/tick/sound
#
#
#
# @within function asset:object/1062.azure_wave/tick/

    execute if score @s General.Object.Tick matches 3 run playsound ogg:ambient.nether.crimson_forest.shine1 neutral @a[distance=..12] ~ ~ ~ 0.05 1.3
    execute if score @s General.Object.Tick matches 3 run playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.20 0.8
    execute if score @s General.Object.Tick matches 4 run playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.25 0.85
    execute if score @s General.Object.Tick matches 5 run playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.30 0.9

    execute if score @s General.Object.Tick matches 3 run playsound ogg:block.amethyst.shimmer neutral @a ~ ~ ~ 0.5 2
    execute if score @s General.Object.Tick matches 3 run playsound ogg:block.amethyst.shimmer neutral @a ~ ~ ~ 0.5 1.2
    execute if score @s General.Object.Tick matches 3 run playsound ogg:block.amethyst.shimmer neutral @a ~ ~ ~ 0.5 0.6
