#> asset:effect/0406.ocean_grace/modifier/add
#
# バフを付与する
#
# @within function
#   asset:effect/0406.ocean_grace/given/
#   asset:effect/0406.ocean_grace/re-given/

#> Private
# @private
    #declare score_holder $Modifier
    #declare score_holder $Stack

# 補正量をスタックから算出する
    execute store result score $Modifier Temporary run data get storage asset:context this.Modifier 100
    execute store result score $Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $Modifier Temporary *= $Stack Temporary

# 最大体力バフを付与する
    execute store result storage asset:temp Effect.Amount double 0.01 run scoreboard players get $Modifier Temporary
    function asset:effect/0406.ocean_grace/modifier/add.m with storage asset:temp Effect

# リセット
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $Stack Temporary
    data remove storage asset:temp Effect
