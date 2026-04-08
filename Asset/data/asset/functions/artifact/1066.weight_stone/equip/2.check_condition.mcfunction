#> asset:artifact/1066.weight_stone/equip/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1066.weight_stone/equip/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1066
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar

#> Private
# @private
    #declare score_holder $Count

# 個数上限を超えてるならCanUsedを削除
    execute if entity @s[tag=CanUsed] store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:1066}}}]
    execute if entity @s[tag=CanUsed] unless score $Count Temporary matches ..2 run tag @s remove CanUsed
    scoreboard players reset $Count Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1066.weight_stone/equip/3.main
