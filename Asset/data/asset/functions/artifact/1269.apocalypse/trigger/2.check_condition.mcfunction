#> asset:artifact/1269.apocalypse/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1269.apocalypse/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# チャージ用エフェクトがなければCanUsedを削除
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 334
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id
    execute if entity @s[tag=CanUsed] unless data storage api: Return.Effect run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1269.apocalypse/trigger/3.main
