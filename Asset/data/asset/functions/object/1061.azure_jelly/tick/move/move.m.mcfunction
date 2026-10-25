#> asset:object/1061.azure_jelly/tick/move/move.m
#
# args:
#   Speed : float
#
# @within function
#   asset:object/1061.azure_jelly/tick/move/speed_multiplier.m
#   asset:object/1061.azure_jelly/tick/summon_effect/

# 壁貫通のないように移動
    $data modify storage lib: Argument.SlideMove.Speed set value $(Speed)
    data modify storage lib: Argument.SlideMove.Conditions set value "unless function asset:object/1061.azure_jelly/predicate/no_collision"
    function lib:slide_move/
