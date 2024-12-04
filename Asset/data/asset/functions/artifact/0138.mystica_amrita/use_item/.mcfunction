#> asset:artifact/0138.mystica_amrita/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/138/use_item/

#> private
# @private
    #declare score_holder $Fluctuation

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    execute store result storage asset:temp 3U.Temp double 0.75 run function lib:mp/get_max
    execute store result score $Fluctuation Lib run data get storage asset:temp 3U.Temp
    function lib:mp/fluctuation

# リセット
    data remove storage asset:temp 3U
