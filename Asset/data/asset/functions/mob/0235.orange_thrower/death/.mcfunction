#> asset:mob/0235.orange_thrower/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/235/death

# 演出
    particle dust 1 0.5 0 2 ~ ~1.2 ~ 0.5 0.5 0.5 0 100 normal @a
    particle block orange_concrete ~ ~1.2 ~ 0.5 0.5 0.5 0 100 normal @a
    playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1 0

# 確率で神器をドロップ
    execute if predicate lib:random_pass_per/20 run function asset:mob/0235.orange_thrower/death/summon_artifact
