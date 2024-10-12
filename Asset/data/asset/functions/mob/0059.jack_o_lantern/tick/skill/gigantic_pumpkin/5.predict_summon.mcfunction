#> asset:mob/0059.jack_o_lantern/tick/skill/gigantic_pumpkin/5.predict_summon
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/gigantic_pumpkin/4.predict

# 召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] if entity @e[type=marker,tag=1N.SpawnMarker,distance=..14] run function asset:mob/0059.jack_o_lantern/tick/skill/gigantic_pumpkin/7.summon
