#> asset:mob/0392.ecual_first/ai/general/9.summon_book
#
# 汎用 魔導書召喚
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

# 魔導書分岐
    execute store result score $AW.Temp Temporary run random value 1..4
    execute if score $AW.Temp Temporary matches 1 run data modify storage api: Argument.ID set value 399
    execute if score $AW.Temp Temporary matches 2 run data modify storage api: Argument.ID set value 400
    execute if score $AW.Temp Temporary matches 3 run data modify storage api: Argument.ID set value 401
    execute if score $AW.Temp Temporary matches 4 run data modify storage api: Argument.ID set value 402
    function api:mob/summon

# リセット
    scoreboard players reset $AW.Temp Temporary
