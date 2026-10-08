#> asset:artifact/1620.satelite_drop/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1620.satelite_drop/trigger/1.trigger

# クールダウン中(Effect397保持中)ならキャンセル
    data modify storage api: Argument.ID set value 397
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return fail

# チャージ中(Effect395保持中)ならチャージ続行
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1620.satelite_drop/trigger/charge

# Effect396があるなら攻撃
    data modify storage api: Argument.ID set value 396
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1620.satelite_drop/trigger/attack

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1620.satelite_drop/trigger/3.main
