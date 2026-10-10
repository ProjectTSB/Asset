#> asset:artifact/1563.thunderflash/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1563.thunderflash/trigger/1.trigger

# 既にチャージ用エフェクトがあるならreturn
    data modify storage api: Argument.ID set value 375
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return run function asset:artifact/1563.thunderflash/trigger/charge

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedでなければreturn
    execute if entity @s[tag=!CanUsed] run return fail

# チャージチェック
    function asset:artifact/1563.thunderflash/trigger/2.check_condition/charge
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/1563.thunderflash/trigger/3.main
