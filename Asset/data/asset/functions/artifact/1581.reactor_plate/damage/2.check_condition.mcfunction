#> asset:artifact/1581.reactor_plate/damage/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1581.reactor_plate/damage/1.trigger

# 基礎処理省略
    tag @s add CanUsed
# 他にアイテム等確認する場合はここに書く
# Dotでは反応しない
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed
# 特定 ID の Effect 情報を取得
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/get/from_id
# エフェクトがあるなら暴発
    execute unless data storage api: Return.Effect run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1581.reactor_plate/damage/3.main
