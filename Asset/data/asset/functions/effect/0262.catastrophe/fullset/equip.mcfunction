#> asset:effect/0262.catastrophe/fullset/equip
# @within function
#   asset:effect/0262.catastrophe/given/
#   asset:effect/0262.catastrophe/re-given/

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.2 180
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:effect/0262.catastrophe/fullset/vfx/1
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:effect/0262.catastrophe/fullset/vfx/2
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:effect/0262.catastrophe/fullset/vfx/3
    playsound entity.phantom.death player @a ~ ~ ~ 0.85 0.5
    playsound entity.phantom.death player @a ~ ~ ~ 0.85 0.55
    playsound entity.phantom.death player @a ~ ~ ~ 0.85 0.6
