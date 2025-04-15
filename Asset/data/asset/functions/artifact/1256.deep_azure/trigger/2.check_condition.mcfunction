#> asset:artifact/1256.deep_azure/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1256.deep_azure/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# チャージ用EffectがあればCanUsed関係なしにチャージ続行
    data modify storage api: Argument.ID set value 329
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/1256.deep_azure/trigger/charge

# チャージ中はCanUsedを削除
    execute if data storage api: Return.Effect run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1256.deep_azure/trigger/3.main
