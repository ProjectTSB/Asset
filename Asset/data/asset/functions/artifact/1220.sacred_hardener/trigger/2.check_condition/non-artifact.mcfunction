#> asset:artifact/1220.sacred_hardener/trigger/2.check_condition/non-artifact
#
#
#
# @within function asset:artifact/1220.sacred_hardener/trigger/2.check_condition

# 防具
#   execute if data storage asset:context Items.offhand{id:      "minecraft:leather_helmet"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:00}
#   execute if data storage asset:context Items.offhand{id:  "minecraft:leather_chestplate"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:00}
#   execute if data storage asset:context Items.offhand{id:    "minecraft:leather_leggings"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:00}
#   execute if data storage asset:context Items.offhand{id:       "minecraft:leather_boots"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:00}
    execute if data storage asset:context Items.offhand{id:         "minecraft:iron_helmet"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:     "minecraft:iron_chestplate"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:       "minecraft:iron_leggings"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:          "minecraft:iron_boots"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:       "minecraft:golden_helmet"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:   "minecraft:golden_chestplate"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:     "minecraft:golden_leggings"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:        "minecraft:golden_boots"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:20}
    execute if data storage asset:context Items.offhand{id:      "minecraft:diamond_helmet"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:50}
    execute if data storage asset:context Items.offhand{id:  "minecraft:diamond_chestplate"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:50}
    execute if data storage asset:context Items.offhand{id:    "minecraft:diamond_leggings"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:50}
    execute if data storage asset:context Items.offhand{id:       "minecraft:diamond_boots"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:50}
    execute if data storage asset:context Items.offhand{id:    "minecraft:netherite_helmet"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:80}
    execute if data storage asset:context Items.offhand{id:"minecraft:netherite_chestplate"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:80}
    execute if data storage asset:context Items.offhand{id:  "minecraft:netherite_leggings"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:80}
    execute if data storage asset:context Items.offhand{id:     "minecraft:netherite_boots"} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:80}

# エラー
    execute if entity @s[tag=!CanUsed] run tellraw @s [{"text":"その防具を加工することは出来ないようだ…"}]
