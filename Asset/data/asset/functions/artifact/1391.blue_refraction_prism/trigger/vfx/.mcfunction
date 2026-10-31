#> asset:artifact/1391.blue_refraction_prism/trigger/vfx/
#
#
#
# @within function asset:artifact/1391.blue_refraction_prism/trigger/3.main

# Targetのうちランダムな1体の箇所で演出
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..64,sort=random,limit=1] at @s anchored eyes rotated ~ 0 positioned ^ ^-0.5 ^ run function asset:artifact/1391.blue_refraction_prism/trigger/vfx/summon
