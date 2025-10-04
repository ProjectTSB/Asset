#> asset:object/1061.azure_jelly/tick/move/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

    execute if score $Interval Temporary matches 00..03 run data modify storage asset:context this.Speed set value 0.08
    execute if score $Interval Temporary matches 04..08 run data modify storage asset:context this.Speed set value 0.10
    execute if score $Interval Temporary matches 09..13 run data modify storage asset:context this.Speed set value 0.15
    execute if score $Interval Temporary matches 14..18 run data modify storage asset:context this.Speed set value 0.20
    execute if score $Interval Temporary matches 19..22 run data modify storage asset:context this.Speed set value 0.25
    execute if score $Interval Temporary matches 23..24 run data modify storage asset:context this.Speed set value 0.30

    execute if score $Interval Temporary matches 25..26 run data modify storage asset:context this.Speed set value 0.30
    execute if score $Interval Temporary matches 27..30 run data modify storage asset:context this.Speed set value 0.25
    execute if score $Interval Temporary matches 31..35 run data modify storage asset:context this.Speed set value 0.20
    execute if score $Interval Temporary matches 36..40 run data modify storage asset:context this.Speed set value 0.15
    execute if score $Interval Temporary matches 41..45 run data modify storage asset:context this.Speed set value 0.10
    execute if score $Interval Temporary matches 46..49 run data modify storage asset:context this.Speed set value 0.08

    function asset:object/1061.azure_jelly/tick/move/check_collision.m with storage asset:context this
