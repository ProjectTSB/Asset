#> asset:object/1183.voltage_effect/init/append/
#
#
#
# @within function asset:object/1183.voltage_effect/init/

#> Private
# @private
    #declare score_holder $Index

# ランダム
    execute store result storage asset:context this.Random int 1 run random value 0..2

# Index
    execute store result score $Index Temporary run data get storage asset:context this.Index
    scoreboard players add $Index Temporary 1
    execute if score $Index Temporary matches 4.. run scoreboard players set $Index Temporary 0
    execute store result storage asset:context this.Index int 1 run scoreboard players get $Index Temporary
    scoreboard players reset $Index Temporary

# do
    function asset:object/1183.voltage_effect/init/append/do.m with storage asset:context this
