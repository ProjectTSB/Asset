#> asset:artifact/1079.allochromatic/click/reload
#
# リロード
#
# @within function asset:artifact/1079.allochromatic/click/3.main

# まだ壊れていないならキャンセル
    execute if data storage asset:context Items.mainhand.id run return fail
# replace する
    data modify storage api: Argument.ID set value 1080
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
