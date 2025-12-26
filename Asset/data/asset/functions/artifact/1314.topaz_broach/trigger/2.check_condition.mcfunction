#> asset:artifact/1314.topaz_broach/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1314.topaz_broach/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1314
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 既にバリアがあるなら、バリアが最大値かチェックし、最大値ならCanUsedを削除
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 345
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect run function asset:artifact/1314.topaz_broach/trigger/2.check_condition/barrier_is_max

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1314.topaz_broach/trigger/3.main
