#> asset:effect/0409.waxing/tick/countdown
#
#
#
# @within function asset:effect/0409.waxing/tick/

# Intervalを20にリセット
    data modify storage asset:context this.Interval set value 20

# 演出
    playsound ogg:block.vault.insert_fail player @a ~ ~ ~ 1.0 2.0
