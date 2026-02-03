#> asset:artifact/0290.carefully_collector/trigger/2.check_condition/ban_items
#
#
#
# @within function asset:artifact/0290.carefully_collector/trigger/2.check_condition

# チェスト、トラップチェスト、各色シュルカーボックスが入っていたら成功
    execute if data storage asset:temp block.Items[{id:"minecraft:chest"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:trapped_chest"}] run return 1

    execute if data storage asset:temp block.Items[{id:"minecraft:shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:white_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:black_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:light_gray_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:gray_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:brown_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:red_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:orange_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:yellow_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:lime_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:green_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:cyan_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:light_blue_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:blue_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:purple_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:magenta_shulker_box"}] run return 1
    execute if data storage asset:temp block.Items[{id:"minecraft:pink_shulker_box"}] run return 1

# 失敗
    return 0
