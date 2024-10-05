#> asset:effect/0244.aurora_armor/fullset/passive
# @within function asset:effect/0244.aurora_armor/tick/

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.2 0.000 0.545 1.000 ~ ~1.2 ~ 1.2 0.6 1.2 0 2 normal @a

# 隠し効果くらいの気持ちのeffect
    execute if predicate lib:is_night if predicate lib:weather/is_sunny run effect give @s speed 1 0 true
    execute if predicate lib:is_night if predicate lib:weather/is_sunny run effect give @s night_vision 11 0 true
