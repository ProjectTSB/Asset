#> asset:object/1153.flame_butterfly/tick/move/common/reset
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/**

# TargetMobUUIDを消す
    data remove storage asset:context this.TargetMobUUID
    data modify storage asset:context this.IsAttackMode set value false
