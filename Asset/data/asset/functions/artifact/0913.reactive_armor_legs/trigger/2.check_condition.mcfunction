#> asset:artifact/0913.reactive_armor_legs/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0913.reactive_armor_legs/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/legs

# 発動ロックエフェクトがついてるか確認
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 306
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id

# 付与されていたらCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect run tag @s remove CanUsed
    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0913.reactive_armor_legs/trigger/3.main
