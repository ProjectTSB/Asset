#> asset:mob/0429.killer_bee_formation/tick/charge
#
# 突進する
#
# @within function
#   asset:mob/0429.killer_bee_formation/tick/
#   asset:mob/0429.killer_bee_formation/tick/charge

# vfx
    execute anchored eyes positioned ^ ^-0.5 ^ run particle cloud ~ ~ ~ 0 0 0 0 1 normal @a

# tp
    tp @s ^ ^ ^0.75

# ヒット判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0429.killer_bee_formation/tick/damage

# 再帰
    execute store result storage asset:context this.Speed int 0.9999999999 run data get storage asset:context this.Speed
    execute unless data storage asset:context this{Speed:0} at @s run function asset:mob/0429.killer_bee_formation/tick/charge
