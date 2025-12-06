#> asset:object/1153.flame_butterfly/tick/move/search_target/success
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/search_target/recursive

# 自身のMobUUIDをフィールドに突っ込む
    execute store result storage asset:context this.TargetMobUUID int 1 run scoreboard players get @s MobUUID

#
