#> asset:mob/0155.immorality/tick/announce/recursive_line
#
#
#
# @within function
#   asset:mob/0155.immorality/tick/announce/
#   asset:mob/0155.immorality/tick/announce/recursive_line

# vfx
    particle electric_spark ^ ^ ^0.0 0 0 0 0 1 normal @a
    particle electric_spark ^ ^ ^0.5 0 0 0 0 1 normal @a

# プレイヤーに接触したらreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run return fail

# 再帰
    execute if entity @s[distance=..20] positioned ^ ^ ^1 run function asset:mob/0155.immorality/tick/announce/recursive_line
