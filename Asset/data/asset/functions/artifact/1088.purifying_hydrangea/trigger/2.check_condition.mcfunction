#> asset:artifact/1088.purifying_hydrangea/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1088
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $U8.HealVal

# CanUsedなら回復量を取得し、累計回復量に加算しておく
    execute if entity @s[tag=CanUsed] store result score $U8.HealVal Temporary run data get storage asset:context ReceiveHeal.Amount 10
    execute if entity @s[tag=CanUsed] run scoreboard players operation @s U8.HealSum += $U8.HealVal Temporary

# 累計回復量が20以下ならCanUsedを削除
    execute unless score @s U8.HealSum matches 200.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1088.purifying_hydrangea/trigger/3.main

# リセット
    scoreboard players reset $U8.HealVal Temporary
