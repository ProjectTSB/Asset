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

# 体力が11以上かチェック
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health
    execute unless score $Health Temporary matches 11.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1251.scale_of_arbit/trigger/3.main

# リセット
    scoreboard players reset $Health Temporary
