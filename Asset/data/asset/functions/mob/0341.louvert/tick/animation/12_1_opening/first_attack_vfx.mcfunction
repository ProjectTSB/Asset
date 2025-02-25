#> asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack_vfx
#
# 先制攻撃_VFX
#
# @within function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack

# 円
    particle end_rod ~-0.0 ~0.0 ~0.25 ~-0.0 ~0.0 ~1000000000.0 0.00000000035 0 normal
    particle end_rod ~0.217 ~0.0 ~0.125 ~866025472.0 ~0.0 ~500000000.0 0.00000000035 0 normal
    particle end_rod ~0.217 ~0.0 ~-0.125 ~866025472.0 ~0.0 ~-500000000.0 0.00000000035 0 normal
    particle end_rod ~-0.0 ~0.0 ~-0.25 ~-0.0 ~0.0 ~-1000000000.0 0.00000000035 0 normal
    particle end_rod ~-0.217 ~0.0 ~-0.125 ~-866025472.0 ~0.0 ~-500000000.0 0.00000000035 0 normal
    particle end_rod ~-0.217 ~0.0 ~0.125 ~-866025472.0 ~0.0 ~500000000.0 0.00000000035 0 normal
# 円.001
    particle end_rod ~-0.125 ~0.217 ~-0.0 ~-500000000.0 ~866025472.0 ~-43.711 0.00000000035 0 normal
    particle end_rod ~0.125 ~0.217 ~-0.0 ~500000000.0 ~866025472.0 ~-21.856 0.00000000035 0 normal
    particle end_rod ~0.25 ~0.0 ~0.0 ~1000000000.0 ~0.0 ~21.856 0.00000000035 0 normal
    particle end_rod ~0.125 ~-0.217 ~0.0 ~500000000.0 ~-866025472.0 ~43.711 0.00000000035 0 normal
    particle end_rod ~-0.125 ~-0.217 ~0.0 ~-500000000.0 ~-866025472.0 ~21.856 0.00000000035 0 normal
    particle end_rod ~-0.25 ~0.0 ~-0.0 ~-1000000000.0 ~0.0 ~-21.856 0.00000000035 0 normal
# 円.002
    particle end_rod ~-0.0 ~0.25 ~0.0 ~-43.711 ~1000000000.0 ~0.0 0.00000000035 0 normal
    particle end_rod ~-0.0 ~0.125 ~-0.217 ~-59.711 ~500000000.0 ~-866025472.0 0.00000000035 0 normal
    particle end_rod ~-0.0 ~-0.125 ~-0.217 ~-15.999 ~-500000000.0 ~-866025472.0 0.00000000035 0 normal
    particle end_rod ~0.0 ~-0.25 ~-0.0 ~43.711 ~-1000000000.0 ~-0.0 0.00000000035 0 normal
    particle end_rod ~0.0 ~-0.125 ~0.217 ~59.711 ~-500000000.0 ~866025472.0 0.00000000035 0 normal
    particle end_rod ~0.0 ~0.125 ~0.217 ~15.999 ~500000000.0 ~866025472.0 0.00000000035 0 normal

# 音
    playsound item.trident.thunder hostile @a[distance=..16] ~ ~ ~ 0.5 2 0.0
    playsound ogg:ambient.nether.crimson_forest.shine3 hostile @a[distance=..16] ~ ~ ~ 0.7 2 0.0
    playsound ogg:ambient.nether.crimson_forest.shine3 hostile @a[distance=..16] ~ ~ ~ 0.7 1.9 0.0
