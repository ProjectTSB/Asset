#> asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m
#
#
# @input args
#   RequiredPercentage
# @within function asset:artifact/0958.whetstone_of_the_gods/trigger/2.check_condition

#> Val
# @private
#declare score_holder $Progress

# 攻略度取得
    function api:global_vars/game_progress
    execute store result score $Progress Temporary run data get storage api: Return.Progress 100
# チェック
    $execute unless score $Progress Temporary matches $(RequiredPercentage).. run tellraw @s [{"text":"この材質の剣を砥ぐには攻略度が","color":"white"},{"text":"\u0002","font":"space"},{"text":"$(RequiredPercentage)%","font":"default","color":"aqua"},{"text":"\u0002","font":"space"},{"text":"必要なようだ...","font":"default","color":"white"}]
    $execute unless score $Progress Temporary matches $(RequiredPercentage).. run tag @s remove CanUsed
# リセット
    scoreboard players reset $Progress Temporary
