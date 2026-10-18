#> asset:artifact/1228.fatalerror/using_item/2.check_condition
#
# チャージの開始条件と継続を判定する
#
# @within function asset:artifact/1228.fatalerror/using_item/1.trigger

# チャージ中は開始時の消費とクールダウン判定を繰り返さない
    data modify storage api: Argument.ID set value 320
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1228.fatalerror/using_item/charge

# 神器の使用条件を確認する
    function asset:artifact/common/check_condition/mainhand

# チャージを開始する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1228.fatalerror/using_item/3.main
