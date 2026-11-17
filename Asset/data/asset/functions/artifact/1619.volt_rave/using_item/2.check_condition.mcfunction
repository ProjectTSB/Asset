#> asset:artifact/1619.volt_rave/using_item/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1619.volt_rave/using_item/1.trigger

# チャージ用EffectがあればCanUsed関係なしにチャージ続行
# Stackが2ならreturnして何もしない
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Stack:2} run return fail
    execute if data storage api: Return.Effect run function asset:artifact/1619.volt_rave/using_item/charge/

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1619.volt_rave/using_item/3.main
