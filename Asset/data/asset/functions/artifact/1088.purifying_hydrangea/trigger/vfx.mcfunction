#> asset:artifact/1088.purifying_hydrangea/trigger/vfx
#
# 演出
#
# @within function
#   asset:artifact/1088.purifying_hydrangea/trigger/3.main
#   asset:artifact/1088.purifying_hydrangea/trigger/7.give_effect

# 演出
    particle rain ~ ~1.5 ~ 0.6 1 0.6 0 120 normal @a
    particle dust_color_transition 0.169 0.718 1.3 1 0.514 0.667 0.969 ~ ~1.2 ~ 0.6 0.4 0.6 1 60 normal
    particle dust 0 0.6 0.4 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 40 normal @a
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 0.5
    playsound minecraft:weather.rain.above player @a ~ ~ ~ 0.4 1.2
