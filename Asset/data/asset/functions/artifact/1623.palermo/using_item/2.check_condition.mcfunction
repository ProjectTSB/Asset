#> asset:artifact/1623.palermo/using_item/2.check_condition
#
#
#
# @within function asset:artifact/1623.palermo/using_item/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
  #declare score_holder $Count

#右クリック時、バフスタックが10ある場合発動不可
    data modify storage api: Argument.ID set value 410
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Stack:10} run tag @s remove CanUsed

#火薬が1以上無いと発動不可
    execute store result score $Count Temporary run clear @s gunpowder 0
    execute if score $Count Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1623.palermo/using_item/3.main
