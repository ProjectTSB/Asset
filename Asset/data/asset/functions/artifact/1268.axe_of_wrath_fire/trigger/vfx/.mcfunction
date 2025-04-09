#> asset:artifact/1268.axe_of_wrath_fire/trigger/vfx/
#
#
#
# @within function asset:artifact/1268.axe_of_wrath_fire/trigger/3.main

# 演出
    particle flame ~ ~1.2 ~ 0 0 0 0.35 100 normal @a
    particle large_smoke ~ ~1.2 ~ 0 0 0 0.35 100 normal @a
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1268.axe_of_wrath_fire/trigger/vfx/circle1
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1268.axe_of_wrath_fire/trigger/vfx/circle2
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1268.axe_of_wrath_fire/trigger/vfx/circle3
