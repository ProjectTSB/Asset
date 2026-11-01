#> asset:artifact/1598.banisher/trigger/reload
#
#
#
# @within function asset:artifact/1598.banisher/trigger/3.main

# 使用回数が残っているならキャンセル
    execute if data storage asset:context Items.mainhand.id run return fail

# アイテム置き換え
    data modify storage api: Argument.ID set value 1599
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
