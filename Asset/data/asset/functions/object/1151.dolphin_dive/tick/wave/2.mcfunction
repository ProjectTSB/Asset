#> asset:object/1151.dolphin_dive/tick/wave/2
#
#
#
# @within function asset:object/1151.dolphin_dive/tick/

# ダメージ
    function asset:object/1151.dolphin_dive/tick/wave/damage/2

# playsound
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.9
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.85
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 0.7 0.8

# object
    execute rotated ~000 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~045 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~090 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~135 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~180 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~225 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~270 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
    execute rotated ~315 ~ positioned ^ ^ ^3 run function asset:object/1151.dolphin_dive/tick/wave/summon
