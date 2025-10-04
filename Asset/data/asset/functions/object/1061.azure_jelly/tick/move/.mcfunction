#> asset:object/1061.azure_jelly/tick/move/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

    execute if score $Interval Temporary matches 00..03 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.08}
    execute if score $Interval Temporary matches 04..08 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.10}
    execute if score $Interval Temporary matches 09..13 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.15}
    execute if score $Interval Temporary matches 14..18 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.20}
    execute if score $Interval Temporary matches 19..22 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.25}
    execute if score $Interval Temporary matches 23..24 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.30}

    execute if score $Interval Temporary matches 25..26 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.30}
    execute if score $Interval Temporary matches 27..30 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.25}
    execute if score $Interval Temporary matches 31..35 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.20}
    execute if score $Interval Temporary matches 36..40 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.15}
    execute if score $Interval Temporary matches 41..45 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.10}
    execute if score $Interval Temporary matches 46..49 run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:0.08}
