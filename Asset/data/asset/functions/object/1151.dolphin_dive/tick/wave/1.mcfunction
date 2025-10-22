#> asset:object/1151.dolphin_dive/tick/wave/1
#
#
#
# @within function asset:object/1151.dolphin_dive/tick/

# ダメージ
    function asset:object/1151.dolphin_dive/tick/wave/damage/1

# playsound
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.8
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.75
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.7

# object
    execute rotated ~000 ~ positioned ^ ^ ^1.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~090 ~ positioned ^ ^ ^1.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~180 ~ positioned ^ ^ ^1.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~270 ~ positioned ^ ^ ^1.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
