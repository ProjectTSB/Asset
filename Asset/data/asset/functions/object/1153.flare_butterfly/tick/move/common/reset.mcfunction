#> asset:object/1153.flare_butterfly/tick/move/common/reset
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/**

# 諸々をリセット
    data remove storage asset:context this.TargetMobUUID
    data modify storage asset:context this.IsAttackMode set value false
    data modify storage asset:context this.AttackDelay._ set value 0
