#> asset:artifact/1056.one_drop_of_life/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1056.one_drop_of_life/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1056
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $HealthPer

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# そもそも死んでるなら発動しない
    execute if entity @s[tag=Death] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 体力割合が25%以下でなければreturn
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
    execute unless score $HealthPer Temporary matches ..25 run tag @s remove CanUsed
    scoreboard players reset $HealthPer Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1056.one_drop_of_life/trigger/3.main
