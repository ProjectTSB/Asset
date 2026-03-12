#> asset:artifact/0290.carefully_collector/trigger/2.check_condition/is_nested
#
#
#
# @within function asset:artifact/0290.carefully_collector/trigger/2.check_condition

# 中にアイテム入りアイテムはあるか？
    execute if data storage asset:temp block.Items[].tag.BlockEntityTag.Items[0] run return 1

# 失敗
    return 0
