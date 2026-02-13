#> asset:object/1153.flame_butterfly/tick/move/common/reset
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/**

# TargetMobUUIDとIsAttackModeをリセットする
    data remove storage asset:context this.TargetMobUUID
    data modify storage asset:context this.IsAttackMode set value false
    data modify storage asset:context this.AttackDelay._ set value 0
    #data modify storage asset:context this.ChaseTick._ set from storage asset:context this.ChaseTick.Max
