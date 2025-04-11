#> asset:object/2211.eclael_circle_slash/tick/effect.m
#
# Objectのtick時の処理
#
# @within asset:object/2211.eclael_circle_slash/tick/effect

# 斬撃演出召喚
    data modify storage api: Argument.ID set value 2208
    $execute positioned ^ ^0.3 ^ positioned ^$(X) ^$(Y) ^$(Z) run particle flash ~ ~ ~ 0 0 0 0 1
    $execute positioned ^ ^0.3 ^ positioned ^$(X) ^$(Y) ^$(Z) run function api:object/summon
