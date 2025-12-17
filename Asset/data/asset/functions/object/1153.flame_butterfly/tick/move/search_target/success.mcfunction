#> asset:object/1153.flame_butterfly/tick/move/search_target/success
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/search_target/recursive

# 自身のMobUUIDをフィールドに突っ込む
    execute store result storage asset:context this.TargetMobUUID int 1 run scoreboard players get @s MobUUID

# 追跡時間初期化
    data modify storage asset:context this.ChaseTick._ set from storage asset:context this.ChaseTick.Max
