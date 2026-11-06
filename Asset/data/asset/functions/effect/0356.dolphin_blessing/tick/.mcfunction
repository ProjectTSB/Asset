#> asset:effect/0356.dolphin_blessing/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0356.dolphin_blessing/_/tick

# 水中呼吸とドルフィンズグレイズ
    effect give @s water_breathing 1 0 true
    effect give @s dolphins_grace 1 0 true

# 水中にいれば、時々イルカの声がする
    execute if predicate lib:is_in_water/ if predicate lib:random_pass_per/1 if predicate lib:random_pass_per/30 run playsound entity.dolphin.ambient_water neutral @s ~ ~ ~ 0.4 1 0
