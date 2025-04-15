#> asset:object/2241.lawless_slashshot/hit_entity/check_player/
#
#
#
# @within function asset:object/2241.lawless_slashshot/hit_entity/

# 対象ののIDをstorageへ突っ込む
    execute store result storage asset:temp Temp.ID int 1 run scoreboard players get @s UserID

# マクロで比較する
    function asset:object/2241.lawless_slashshot/hit_entity/check_player/m with storage asset:temp Temp

# リセット
    data remove storage asset:temp Temp
