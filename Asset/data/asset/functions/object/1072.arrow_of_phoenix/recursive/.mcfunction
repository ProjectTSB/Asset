#> asset:object/1072.arrow_of_phoenix/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1072/recursive

# 演出
    particle dust_color_transition 1 0 0 0.7 1 0.533 0 ^ ^ ^ 0 0 0 0 1 normal @a
    particle dust_color_transition 1 0 0 0.7 1 0.533 0 ^ ^ ^-0.25 0 0 0 0 1 normal @a

#
    execute if predicate lib:random_pass_per/25 run particle small_flame ^ ^ ^ 0.05 0.05 0.05 0 1 normal @a
    execute if predicate lib:random_pass_per/25 run particle small_flame ^ ^ ^-0.25 0.05 0.05 0.05 0 1 normal @a
