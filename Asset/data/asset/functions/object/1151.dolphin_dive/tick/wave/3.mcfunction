#> asset:object/1151.dolphin_dive/tick/wave/3
#
#
#
# @within function asset:object/1151.dolphin_dive/tick/

# ダメージ
    function asset:object/1151.dolphin_dive/tick/wave/damage/3

# playsound
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 1.0
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.95
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.9

# object
    execute rotated ~000 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~030 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~060 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~090 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~120 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~150 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~180 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~210 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~240 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~270 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~300 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~330 ~ positioned ^ ^ ^4.5 run function asset:object/1151.dolphin_dive/tick/wave/summon
