#> asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/main
#
# 演出やバフなどを行う
#
# @within function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/loop

# バフ
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/effect

# 演出
    execute if predicate lib:random_pass_per/50 run particle dust 1 1 1000000000 0.5 ~ ~1.4 ~ 1 0.5 1 0 1 normal @a
    execute if predicate lib:random_pass_per/50 run particle dolphin ~ ~1.4 ~ 1.2 0.5 1.2 0 1 normal @a

# スケジュールループ
    schedule function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace
