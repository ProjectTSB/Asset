#> asset:artifact/1228.fatalerror/release_using_item/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1228.fatalerror/release_using_item/1.trigger

# チャージ用Effectを取得する
    data modify storage api: Argument.ID set value 320
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1228.fatalerror/release_using_item/3.main
