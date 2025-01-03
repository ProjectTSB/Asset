#> asset:object/2102.lexiel_tp/tick/line
#
#
#
# @within function
#   asset:object/2102.lexiel_tp/tick/
#   asset:object/2102.lexiel_tp/tick/line

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0 1

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[distance=..20] run function asset:object/2102.lexiel_tp/tick/line
