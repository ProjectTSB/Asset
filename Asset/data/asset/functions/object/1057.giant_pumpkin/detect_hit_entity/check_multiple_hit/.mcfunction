#> asset:object/1057.giant_pumpkin/detect_hit_entity/check_multiple_hit/
#
#
#
# @within function asset:object/1057.giant_pumpkin/detect_hit_entity/check

# 自身のMobUUIDを取得
    execute store result storage asset:context this.TempID int 1 run scoreboard players get @s MobUUID

# チェックする
    function asset:object/1057.giant_pumpkin/detect_hit_entity/check_multiple_hit/.m with storage asset:context this
