#> asset:artifact/1619.volt_rave/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1619.volt_rave/trigger/1.trigger

# チャージ用Effectがあれば強制的にチャージ続行
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1619.volt_rave/trigger/charge

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1619.volt_rave/trigger/3.main
