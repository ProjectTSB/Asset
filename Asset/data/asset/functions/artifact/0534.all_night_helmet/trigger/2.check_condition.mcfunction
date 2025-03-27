#> asset:artifact/0534.all_night_helmet/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0534.all_night_helmet/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

#> score
# @private
    #declare score_holder $Daytime

# 今が夜かどうか確認
    execute store result score $Daytime Temporary run time query daytime
# 装備をすべて着ているが、夜じゃない場合
    data modify storage api: Argument.ID set value 241
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Stack:4} if score $Daytime Temporary matches 0..12000 run tag @s remove CanUsed
# 演出（使用できないときのメッセージだすとうるさいのでなし）
    execute unless entity @s[tag=CanUsed] run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 20 normal @s
    execute unless entity @s[tag=CanUsed] run playsound minecraft:block.stone_button.click_off player @s ~ ~ ~ 1 2
# 装備が足りない場合
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
# リセット
    scoreboard players reset $Daytime Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0534.all_night_helmet/trigger/3.main
