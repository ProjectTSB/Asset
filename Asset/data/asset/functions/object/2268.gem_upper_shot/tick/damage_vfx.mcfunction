#> asset:object/2268.gem_upper_shot/tick/damage_vfx
#
# Objectのtick時の処理
#
# @within asset:object/2268.gem_upper_shot/tick/

# 演出
    particle explosion ~ ~1 ~ 3 1 3 0 20 force
    particle lava ~ ~1 ~ 3 1 3 0.2 10
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.8
