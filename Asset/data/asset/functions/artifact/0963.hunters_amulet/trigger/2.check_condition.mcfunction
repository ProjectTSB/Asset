#> asset:artifact/0963.hunters_amulet/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0963.hunters_amulet/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 963
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute unless predicate lib:is_sprinting run tag @s remove QR.Run
    execute unless predicate lib:is_sprinting run tag @s remove CanUsed
    function api:data_get/on_ground
    execute unless data storage api: {OnGround:true} run tag @s remove CanUsed

    execute if entity @s[tag=QR.Run] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0963.hunters_amulet/trigger/3.main
