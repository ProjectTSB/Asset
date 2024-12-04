#> asset:effect/0240.bless_of_deep_sea_coral/fullset/passive
# @within function asset:effect/0240.bless_of_deep_sea_coral/tick/

# バフ
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run function asset:effect/0240.bless_of_deep_sea_coral/fullset/effect

# 演出
    particle dust 1 1 1000000000 0.5 ~ ~1.4 ~ 1 0.5 1 0 3 normal @a
    particle dolphin ~ ~1.4 ~ 1.2 0.5 1.2 0 1 normal @a
