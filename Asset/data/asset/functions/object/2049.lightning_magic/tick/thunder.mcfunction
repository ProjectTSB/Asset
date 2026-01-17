#> asset:object/2049.lightning_magic/tick/thunder
#
# vfx
#
# @within function asset:object/2049.lightning_magic/tick/on_ground

# 演出
    execute positioned ~ ~0.2 ~ run function asset:object/2049.lightning_magic/tick/vfx/circle
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.3 2 0
