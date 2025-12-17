#> asset:object/1153.flame_butterfly/tick/move/
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/

# ターゲットがいるかどうかチェックする
# ターゲットにできる敵がOwnerの周囲にいなければOwnerを追尾する

# TargetMobUUIDが設定されてなければ、ターゲットしうる敵がいるか探す
    execute unless data storage asset:context this.TargetMobUUID if function asset:object/1153.flame_butterfly/predicate/near_enemy run function asset:object/1153.flame_butterfly/tick/move/search_target/

# TargetMobUUIDがあるかつOwnerが周囲にいなければTargetMobUUIDを削除
    execute if data storage asset:context this.TargetMobUUID unless function asset:object/1153.flame_butterfly/predicate/near_owner run function asset:object/1153.flame_butterfly/tick/move/common/reset

# TargetMobUUIDがあれば追尾する
    execute if data storage asset:context this.TargetMobUUID run function asset:object/1153.flame_butterfly/tick/move/chase_enemy/m with storage asset:context this

# ターゲットがいなければOwnerの方へ移動
    execute unless data storage asset:context this.TargetMobUUID run function asset:object/1153.flame_butterfly/tick/move/to_owner
