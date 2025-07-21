#> asset:artifact/1081.wandering_piece_of_dream/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1081.wandering_piece_of_dream/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1081
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $U1.HealVal

# CanUsedなら回復量を取得し、累計回復量に加算しておく
    execute if entity @s[tag=CanUsed] store result score $U1.HealVal Temporary run data get storage asset:context ReceiveHeal.Amount 10
    execute if entity @s[tag=CanUsed] run scoreboard players operation @s U1.HealSum += $U1.HealVal Temporary

# 累計回復量が20以下ならCanUsedを削除
    execute unless score @s U1.HealSum matches 650.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1081.wandering_piece_of_dream/trigger/3.main

# リセット
    scoreboard players reset $U1.HealVal Temporary
