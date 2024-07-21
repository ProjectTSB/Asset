#> asset:mob/0370.prominence_magic/tick/5.2nd_blast
#
#
#
# @within function asset:mob/0370.prominence_magic/tick/3.on_ground

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 0.65 0
    execute positioned ~ ~0.4 ~ run function asset:mob/0370.prominence_magic/tick/vfx/2nd
#
