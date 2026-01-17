#> asset:object/2049.lightning_magic/tick/thunder
#
# vfx
#
# @within function asset:object/2049.lightning_magic/tick/on_ground

# 演出
    # function asset:object/2049.lightning_magic/tick/vfx/thunder
    execute positioned ~ ~0.2 ~ run function asset:object/2049.lightning_magic/tick/vfx/circle
    # particle dust 0.6 0.6 0.8 1.2 ~ ~3 ~ 0.6 0.05 0.6 0 50 normal @a
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.3 2 0
