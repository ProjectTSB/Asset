#> asset:artifact/0138.mystica_amrita/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/138/use_item/

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    function api:mp/get_max
    execute store result storage api: Argument.Fluctuation double 0.75 run data get storage api: Return.MaxMP
    function api:mp/fluctuation
