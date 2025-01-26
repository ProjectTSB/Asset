#> asset:artifact/1141.bell_of_courage/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1141.bell_of_courage/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $HealthPer

# HP割合が60%以下でなければCanUsedを削除
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
    execute unless score $HealthPer Temporary matches ..60 run tag @s remove CanUsed
    scoreboard players reset $HealthPer Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1141.bell_of_courage/trigger/3.main
