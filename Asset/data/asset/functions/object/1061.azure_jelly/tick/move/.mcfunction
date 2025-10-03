#> asset:object/1061.azure_jelly/tick/move/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

    execute if score $Interval Temporary matches 00..05 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.08}
    execute if score $Interval Temporary matches 06..10 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.10}
    execute if score $Interval Temporary matches 11..15 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.15}
    execute if score $Interval Temporary matches 16..20 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.20}
    execute if score $Interval Temporary matches 21..24 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.25}
    execute if score $Interval Temporary matches 25..26 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.30}

    execute if score $Interval Temporary matches 27..28 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.30}
    execute if score $Interval Temporary matches 29..32 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.25}
    execute if score $Interval Temporary matches 33..37 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.20}
    execute if score $Interval Temporary matches 38..42 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.15}
    execute if score $Interval Temporary matches 43..47 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.10}
    #execute if score $Interval Temporary matches 48..49 run function asset:object/1061.azure_jelly/tick/move/check.m {Step:0.08}
