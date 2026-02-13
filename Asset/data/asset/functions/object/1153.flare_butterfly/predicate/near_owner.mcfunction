#> asset:object/1153.flare_butterfly/predicate/near_owner
#
#
#
# @within function asset:object/1153.flare_butterfly/**

# Ownerが近くにいないなら失敗
    execute unless entity @p[tag=1153.Owner,distance=..10] run return 0

# 成功
    return 1
