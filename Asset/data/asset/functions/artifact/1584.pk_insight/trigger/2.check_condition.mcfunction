#> asset:artifact/1584.pk_insight/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1584.pk_insight/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く
# Effect 389があるなら失敗
    data modify storage api: Argument.ID set value 389
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1584.pk_insight/trigger/3.main
