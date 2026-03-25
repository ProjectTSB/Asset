#> asset:artifact/0566.great_sage_helmet/damage/2.check_condition
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/damage/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {BelieveMessage:true}
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

#> Val
# @private
    #declare score_holder $FQ.HealthPer

# フルセットかどうか確認する
    data modify storage api: Argument.ID set value 256
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run return run tag @s remove CanUsed

# 現在体力割合を取得する
    function api:entity/player/get_health_per
    execute store result score $FQ.HealthPer Temporary run data get storage api: Return.HealthPer 1000
# 体力が20%以下
    execute unless score $FQ.HealthPer Temporary matches ..200 run tag @s remove CanUsed
# リセット
    scoreboard players reset $FQ.HealthPer Temporary

# 10%の確率で喋る
    execute unless predicate lib:random_pass_per/10 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0566.great_sage_helmet/damage/3.main
