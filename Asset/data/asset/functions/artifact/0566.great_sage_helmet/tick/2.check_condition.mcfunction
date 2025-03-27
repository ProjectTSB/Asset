#> asset:artifact/0566.great_sage_helmet/tick/2.check_condition
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/tick/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

#> Val
# @private
    #declare score_holder $FQ.HealthPer

# フルセットかどうか確認する
    data modify storage api: Argument.ID set value 256
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run return run tag @s remove CanUsed

# 時間経過
    execute unless predicate lib:in_battle run scoreboard players add @s FQ.TalkTime 1
# 一定時間経過しているか確認する
    execute unless score @s FQ.TalkTime matches 3000.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0566.great_sage_helmet/tick/3.main
