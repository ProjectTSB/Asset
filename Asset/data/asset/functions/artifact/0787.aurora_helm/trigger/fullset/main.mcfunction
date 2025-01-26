#> asset:artifact/0787.aurora_helm/trigger/fullset/main
#
# 演出
#
# @within function asset:artifact/0787.aurora_helm/trigger/fullset/loop

# 演出
    execute if predicate lib:random_pass_per/50 run particle dust_color_transition 0.000 1.000 0.886 0.7 0.000 0.545 1.000 ~ ~1.2 ~ 0.7 0.5 0.7 0 1 normal @a

# 隠し効果くらいの気持ちのeffect
    execute if predicate lib:is_night if predicate lib:weather/is_sunny run effect give @s speed 1 0 true
    execute if predicate lib:is_night if predicate lib:weather/is_sunny run effect give @s night_vision 11 0 true

# スケジュールループ
    schedule function asset:artifact/0787.aurora_helm/trigger/fullset/loop 1t replace
