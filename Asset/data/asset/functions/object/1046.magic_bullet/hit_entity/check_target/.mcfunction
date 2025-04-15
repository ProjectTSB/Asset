#> asset:object/1046.magic_bullet/hit_entity/check_target/
#
#
#
# @within function asset:object/1046.magic_bullet/hit_entity/

# IDをstorageへ突っ込む
    execute if entity @s[type=player] store result storage asset:temp Args.ID int 1 run scoreboard players get @s UserID
    execute if entity @s[type=!player] store result storage asset:temp Args.ID int 1 run scoreboard players get @s MobUUID

# マクロで比較する
    function asset:object/1046.magic_bullet/hit_entity/check_target/m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
