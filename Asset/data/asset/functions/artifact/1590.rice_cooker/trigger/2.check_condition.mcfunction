#> asset:artifact/1590.rice_cooker/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1590.rice_cooker/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
# Effect 392を確認
    data modify storage api: Argument.ID set value 392
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/1590.rice_cooker/trigger/charge
# 発射中なら発動不可
    data modify storage api: Argument.ID set value 393
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1590.rice_cooker/trigger/3.main
