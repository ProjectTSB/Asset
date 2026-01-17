#> asset:object/2049.lightning_magic/tick/thunder
#
# vfx
#
# @within function asset:object/2049.lightning_magic/tick/on_ground

# 演出
    execute positioned ~ ~0.2 ~ run function asset:object/2049.lightning_magic/tick/vfx/circle
    particle dust 0.95 0.85 0.3 0.9 ~ ~1.4 ~ 0.05 1 0.05 0 20 normal @a
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.3 2 0
