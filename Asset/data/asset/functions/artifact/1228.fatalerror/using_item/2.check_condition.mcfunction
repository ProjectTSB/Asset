#> asset:artifact/1228.fatalerror/using_item/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1228.fatalerror/using_item/1.trigger

# チャージ中は開始時の消費とクールダウン判定を繰り返さない
    data modify storage api: Argument.ID set value 320
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1228.fatalerror/using_item/charge

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1228.fatalerror/using_item/3.main
