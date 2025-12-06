#> asset:object/1153.flame_butterfly/tick/move/
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/

# 敵が近くにいなければOwnerの方へ移動
    execute unless function asset:object/1153.flame_butterfly/predicate/near_enemy run return run function asset:object/1153.flame_butterfly/tick/move/no_enemy

# unless functionでreturnしているので、ここからの判定にif functionは多分要らない

# TargetMobUUIDが設定されてなければ、ターゲットしうる敵がいるか探す
    execute unless data storage asset:context this.TargetMobUUID run function asset:object/1153.flame_butterfly/tick/move/search_target/

# TargetMobUUIDがあれば追尾する
    execute if data storage asset:context this.TargetMobUUID run function asset:object/1153.flame_butterfly/tick/move/chase_enemy.m with storage asset:context this
