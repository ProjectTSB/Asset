#> asset:object/2080.aurora_missile/kill/mp_reduce
#
# MPを割合で減らす
#
# @within function asset:object/2080.aurora_missile/kill/main

#> Private
# @private
    #declare score_holder $MaxMP
    #declare score_holder $ReducePer

# 対象の最大MPを取得
    function api:mp/get_max
    execute store result score $MaxMP Temporary run data get storage api: Return.MaxMP

# フィールドから減少割合を取得
    execute store result score $ReducePer Temporary run data get storage asset:context this.MPReducePer 10

# ($ReducePer)%分MPを減少させる
    execute store result storage api: Argument.Fluctuation double -0.001 run scoreboard players operation $MaxMP Temporary *= $ReducePer Temporary
    function api:mp/fluctuation

# リセット
    scoreboard players reset $MaxMP Temporary
    scoreboard players reset $ReducePer Temporary
