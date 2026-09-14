#> asset:effect/0386.pk_insight/tick/count
#
#
#
# @within function asset:effect/0386.pk_insight/tick/

# Intervalリセット
    data modify storage asset:context this.Interval set value 10

# 演出
    playsound entity.ender_eye.death player @a ~ ~ ~ 2.0 1.0
    particle composter ~ ~ ~ 0.1 0.25 0.1 1 15
    particle witch ~ ~ ~ 0.1 0.25 0.1 1 15
