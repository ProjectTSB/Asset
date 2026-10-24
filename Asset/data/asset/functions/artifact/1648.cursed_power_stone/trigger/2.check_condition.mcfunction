#> asset:artifact/1648.cursed_power_stone/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1648.cursed_power_stone/trigger/1.trigger

#> private
# @private
    #declare score_holder $Count

# ID指定する
    data modify storage asset:artifact TargetID set value 1648
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
# 既に装備しているならキャンセル
    tag @s[tag=1648.Equipping] remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1648.cursed_power_stone/trigger/3.main

# リセット
    scoreboard players reset $Count Temporary
