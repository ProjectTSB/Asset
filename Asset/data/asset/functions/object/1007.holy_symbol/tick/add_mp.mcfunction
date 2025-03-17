#> asset:object/1007.holy_symbol/tick/add_mp
#
#
#
# @within function asset:object/1007.holy_symbol/tick/

#> Private
# @private
    #declare score_holder $Per
    #declare score_holder $MPMax

# 回復量の計算に必要な値を取得
    execute store result score $Per Temporary run data get storage asset:context this.MPHealPer 10000
    function api:mp/get_max
    execute store result score $MPMax Temporary run data get storage api: Return.MaxMP

# MP回復
    execute store result storage api: Argument.Fluctuation int 0.0001 run scoreboard players operation $MPMax Temporary *= $Per Temporary
    function api:mp/fluctuation

# リセット
    scoreboard players reset $Per Temporary
    scoreboard players reset $MPMax Temporary
