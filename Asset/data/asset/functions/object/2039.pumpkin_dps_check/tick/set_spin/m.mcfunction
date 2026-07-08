#> asset:object/2039.pumpkin_dps_check/tick/set_spin/m
#
#
#
# @within function asset:object/2039.pumpkin_dps_check/tick/move/

    execute unless function asset:object/2039.pumpkin_dps_check/tick/set_spin/check run return fail

#
    $function asset:object/2039.pumpkin_dps_check/tick/set_spin/spin.m {Interpolation:$(Interpolation)}
