#> asset:artifact/1251.scale_of_arbit/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1251.scale_of_arbit/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $Health

# 体力が一定値以上かチェック
    execute if entity @s[tag=CanUsed] run function api:data_get/health
    execute if entity @s[tag=CanUsed] store result score $Health Temporary run data get storage api: Health
    execute if entity @s[tag=CanUsed] unless score $Health Temporary matches 21.. run function lib:message/artifact/condition_not_met
    execute if entity @s[tag=CanUsed] unless score $Health Temporary matches 21.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1251.scale_of_arbit/trigger/3.main

# リセット
    scoreboard players reset $Health Temporary
