#> asset:artifact/0027.bow_of_apollo/using_item/charge/
# @within function asset:artifact/0027.bow_of_apollo/using_item/3.main

#> private
# @private
    #declare score_holder $CurrentMP
    #declare score_holder $Cap
    #declare score_holder $Fluc
    #declare score_holder $Consumption

# ロック状態ならここで終了
    execute if entity @s[tag=R.LockCharge] run return fail

# チャージ段階を取得
    function asset:artifact/0027.bow_of_apollo/get_charge/
# 現段階の消費量を取得
    function asset:artifact/0027.bow_of_apollo/using_item/charge/get_current.m with storage asset:temp R
    execute unless data storage asset:temp R.Charge run return fail
# その他定数を取得
    function api:mp/get_current
    execute store result score $CurrentMP Temporary run data get storage api: Return.CurrentMP
    execute store result score $Cap Temporary run data get storage asset:temp R.Charge.Cap
    execute store result score $Consumption Temporary run data get storage asset:temp R.Charge.Consumption
# MPをチャージする
# $Fluc = min($Consumption, $CurrentMP, 100 - MPCharge) * -1
    scoreboard players operation $Fluc Temporary = $Cap Temporary
    scoreboard players operation $Fluc Temporary -= @s R.MPCharge
    scoreboard players operation $Fluc Temporary < $CurrentMP Temporary
    scoreboard players operation $Fluc Temporary < $Consumption Temporary
    execute store result storage api: Argument.Fluctuation int -1 run scoreboard players get $Fluc Temporary
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
    scoreboard players operation @s R.MPCharge += $Fluc Temporary
# チャージ完了時以外で最大値を吸収できなかったらロックする
    execute unless score @s R.MPCharge = $Cap Temporary if score $Fluc Temporary < $Consumption Temporary run tag @s add R.LockCharge
# リセット
    scoreboard players reset $Fluc Temporary
    scoreboard players reset $CurrentMP Temporary
    scoreboard players reset $Consumption Temporary
    data remove storage asset:temp R.Charge
