#> asset:effect/0240.bless_of_deep_sea_coral/fullset/passive
# @within function asset:effect/0240.bless_of_deep_sea_coral/tick/

# バフ
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run function asset:effect/0240.bless_of_deep_sea_coral/fullset/effect

# 演出
    execute if predicate lib:random_pass_per/60 run particle dust 1 1 1000000000 0.5 ~ ~1.4 ~ 1.4 0.5 1.4 0 1 normal @a
    execute if predicate lib:random_pass_per/40 run particle dolphin ~ ~1.4 ~ 1.4 0.5 1.4 0 1 normal @a
