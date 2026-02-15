#> asset:object/2265.field_modify_manager/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/
# @within asset:object/2265.field_modify_manager/tick/attack

# ボスバー消去
    bossbar remove asset:co_field_modify

# 床消去
    tag @e[type=item_display,tag=CO.Object.FieldModify,distance=..80] add 2266.Remove

# 消去
    kill @s
