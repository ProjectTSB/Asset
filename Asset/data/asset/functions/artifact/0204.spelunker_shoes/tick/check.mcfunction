#> asset:artifact/0204.spelunker_shoes/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/204/tick/check

#> private
# @private
    #declare score_holder $FallDistance

# 落下距離が2マス未満の場合は処理しない
    function api:data_get/fall_distance
    execute store result score $FallDistance Temporary run data get storage api: FallDistance
    execute if score $FallDistance Temporary matches ..1 run tag @s remove CanUsed
    scoreboard players reset $FallDistance
