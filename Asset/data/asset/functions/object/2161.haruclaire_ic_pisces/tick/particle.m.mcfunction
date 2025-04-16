#> asset:object/2161.haruclaire_ic_pisces/tick/particle.m
#
# Objectのtick時の処理
#
# @within asset:object/2161.haruclaire_ic_pisces/tick/attack

# 演出
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 5
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle explosion ~ ~ ~ 1 1 1 0 3
