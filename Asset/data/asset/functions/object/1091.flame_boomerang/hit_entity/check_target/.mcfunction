#> asset:object/1091.flame_boomerang/hit_entity/check_target/
#
# tag=Enemyとして多重ヒット判定を行う
#
# @within function asset:object/1091.flame_boomerang/hit_entity/

# 敵のIDをstorageへ突っ込む
    execute store result storage asset:temp Temp.ID int 1 run scoreboard players get @s MobUUID

# マクロで比較する
    function asset:object/1091.flame_boomerang/hit_entity/check_target/m with storage asset:temp Temp

# リセット
    data remove storage asset:temp Temp
