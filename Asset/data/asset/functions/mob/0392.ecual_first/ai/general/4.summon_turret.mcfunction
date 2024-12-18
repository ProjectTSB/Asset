#> asset:mob/0392.ecual_first/ai/general/4.summon_turret
#
# 汎用 クリスタルタレット召喚
#
# @within function asset:mob/0392.ecual_first/**

playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0
# 円
particle end_rod ^-0.0 ^0.0 ^1.0 ^-0.0 ^1000000000.0 ^1.0 0.00000000020 0 force @a[distance=..32]
particle end_rod ^0.866 ^0.0 ^0.5 ^0.866 ^1000000000.0 ^0.5 0.00000000020 0 force @a[distance=..32]
particle end_rod ^0.866 ^0.0 ^-0.5 ^0.866 ^1000000000.0 ^-0.5 0.00000000020 0 force @a[distance=..32]
particle end_rod ^-0.0 ^0.0 ^-1.0 ^-0.0 ^1000000000.0 ^-1.0 0.00000000020 0 force @a[distance=..32]
particle end_rod ^-0.866 ^0.0 ^-0.5 ^-0.866 ^1000000000.0 ^-0.5 0.00000000020 0 force @a[distance=..32]
particle end_rod ^-0.866 ^0.0 ^0.5 ^-0.866 ^1000000000.0 ^0.5 0.00000000020 0 force @a[distance=..32]
# 円.001
particle end_rod ^0.5 ^0.0 ^0.866 ^0.5 ^1000000000.0 ^0.866 0.00000000030 0 force @a[distance=..32]
particle end_rod ^1.0 ^0.0 ^0.0 ^1.0 ^1000000000.0 ^0.0 0.00000000030 0 force @a[distance=..32]
particle end_rod ^0.5 ^0.0 ^-0.866 ^0.5 ^1000000000.0 ^-0.866 0.00000000030 0 force @a[distance=..32]
particle end_rod ^-0.5 ^0.0 ^-0.866 ^-0.5 ^1000000000.0 ^-0.866 0.00000000030 0 force @a[distance=..32]
particle end_rod ^-1.0 ^0.0 ^0.0 ^-1.0 ^1000000000.0 ^0.0 0.00000000030 0 force @a[distance=..32]
particle end_rod ^-0.5 ^0.0 ^0.866 ^-0.5 ^1000000000.0 ^0.866 0.00000000030 0 force @a[distance=..32]

data modify storage api: Argument.ID set value 397
function api:mob/summon
