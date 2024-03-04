#> asset:artifact/1057.great_demon_head/trigger/common/equip_vfx
#
# 装備時の演出
#
# @within function
#   asset:artifact/1057.great_demon_head/trigger/3.main
#   asset:artifact/1058.great_demon_chest/trigger/3.main
#   asset:artifact/1059.great_demon_leg/trigger/3.main
#   asset:artifact/1060.great_demon_boots/trigger/3.main

# 音
    playsound block.conduit.activate player @a[distance=..16] ~ ~ ~ 1 0.5 0.0
    playsound entity.wither.spawn player @a[distance=..16] ~ ~ ~ 0.15 1.5 0.0
# 円
    particle crit ^-0.0 ^0.0 ^1.0 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.259 ^0.0 ^0.966 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.5 ^0.0 ^0.866 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.707 ^0.0 ^0.707 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.866 ^0.0 ^0.5 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.966 ^0.0 ^0.259 0.0 0.0 0.0 0.5 1 normal
    particle crit ^1.0 ^0.0 ^0.0 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.966 ^0.0 ^-0.259 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.866 ^0.0 ^-0.5 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.707 ^0.0 ^-0.707 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.5 ^0.0 ^-0.866 0.0 0.0 0.0 0.5 1 normal
    particle crit ^0.259 ^0.0 ^-0.966 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.0 ^0.0 ^-1.0 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.259 ^0.0 ^-0.966 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.5 ^0.0 ^-0.866 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.707 ^0.0 ^-0.707 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.866 ^0.0 ^-0.5 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.966 ^0.0 ^-0.259 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-1.0 ^0.0 ^0.0 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.966 ^0.0 ^0.259 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.866 ^0.0 ^0.5 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.707 ^0.0 ^0.707 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.5 ^0.0 ^0.866 0.0 0.0 0.0 0.5 1 normal
    particle crit ^-0.259 ^0.0 ^0.966 0.0 0.0 0.0 0.5 1 normal
# 円.001
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.144 ^0.0 ^1.091 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.421 ^0.0 ^1.016 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.67 ^0.0 ^0.873 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.873 ^0.0 ^0.67 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^1.016 ^0.0 ^0.421 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^1.091 ^0.0 ^0.144 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^1.091 ^0.0 ^-0.144 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^1.016 ^0.0 ^-0.421 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.873 ^0.0 ^-0.67 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.67 ^0.0 ^-0.873 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.421 ^0.0 ^-1.016 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^0.144 ^0.0 ^-1.091 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.144 ^0.0 ^-1.091 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.421 ^0.0 ^-1.016 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.67 ^0.0 ^-0.873 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.873 ^0.0 ^-0.67 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-1.016 ^0.0 ^-0.421 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-1.091 ^0.0 ^-0.144 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-1.091 ^0.0 ^0.144 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-1.016 ^0.0 ^0.421 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.873 ^0.0 ^0.67 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.67 ^0.0 ^0.873 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.421 ^0.0 ^1.016 0.0 0.0 0.0 0.5 1 normal
    particle dust 0.3347 0.3347 0.3347 1.0 ^-0.144 ^0.0 ^1.091 0.0 0.0 0.0 0.5 1 normal

