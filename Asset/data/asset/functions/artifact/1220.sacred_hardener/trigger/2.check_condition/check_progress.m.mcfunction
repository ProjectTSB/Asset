#> asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m
#
#
#
# @input args Threshold : int
# @within function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/*artifact

#> private
# @private
    #declare score_holder $Progress

# 攻略度取得
    function api:global_vars/game_progress
    execute store result score $Progress Temporary run data get storage api: Return.Progress 100
# チェック
    $execute unless score $Progress Temporary matches $(Threshold).. run tellraw @s [{"text":"この材質の防具を加工するには攻略度が","color":"white"},{"text":"\u0002","font":"space"},{"text":"$(Threshold)%","font":"default","color":"aqua"},{"text":"\u0002","font":"space"},{"text":"必要なようだ...","font":"default","color":"white"}]
    $execute unless score $Progress Temporary matches $(Threshold).. run tag @s remove CanUsed
# リセット
    scoreboard players reset $Progress Temporary
