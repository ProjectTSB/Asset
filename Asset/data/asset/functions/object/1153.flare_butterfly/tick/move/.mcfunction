#> asset:object/1153.flare_butterfly/tick/move/
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/

# ターゲットがいるかどうかチェックする
# ターゲットにできる敵がOwnerの周囲にいなければOwnerを追尾する

# TargetMobUUIDがない && Ownerの近くに敵がいればTargetMobUUIDを設定
    execute unless data storage asset:context this.TargetMobUUID if function asset:object/1153.flare_butterfly/predicate/enemy_around_owner run function asset:object/1153.flare_butterfly/tick/move/search_target/

# TargetMobUUIDがある && Ownerが周囲にいない ならTargetMobUUIDを削除
    execute if data storage asset:context this.TargetMobUUID unless function asset:object/1153.flare_butterfly/predicate/owner_near run function asset:object/1153.flare_butterfly/tick/move/common/reset

# TargetMobUUIDがある && Ownerの周囲にTargetがいない ならTargetMobUUIDを削除
    execute if data storage asset:context this.TargetMobUUID unless function asset:object/1153.flare_butterfly/predicate/target_in_range run function asset:object/1153.flare_butterfly/tick/move/common/reset


# TargetMobUUIDがあれば対象へ追尾する
    execute if data storage asset:context this.TargetMobUUID run function asset:object/1153.flare_butterfly/tick/move/chase_enemy/process with storage asset:context this

# TargetMobUUIDがなければOwnerの方へ移動
    execute unless data storage asset:context this.TargetMobUUID run function asset:object/1153.flare_butterfly/tick/move/to_owner/
