#> asset:artifact/1081.wandering_piece_of_dream/trigger/6.give_effect
#
# Effectを付与する
#
# @within function asset:artifact/1081.wandering_piece_of_dream/trigger/3.main

# 付与
    data modify storage api: Argument.ID set value 231
    function api:entity/mob/effect/give