#> asset:effect/0604.logging_of_soul/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0604.logging_of_soul/_/tick

# 演出
    particle soul ~ ~1.2 ~ 0.3 0.4 0.3 0 1 normal @a

# 稀に悲鳴が聞こえる
    execute if predicate lib:random_pass_per/3 run playsound entity.ghast.hurt hostile @s ~ ~ ~ 0.6 1 0
