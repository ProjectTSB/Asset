#> asset:artifact/1620.satelite_drop/using_item/charge
#
#
#
# @within function asset:artifact/1620.satelite_drop/using_item/**

#> private
# @private
    #declare score_holder $A1620.Charge
    #declare score_holder $30

# MPとチャージ時間チェック
    data modify storage api: Argument.Threshold set value 40
    function api:mp/check
    execute store result score $A1620.Charge Temporary run data get storage asset:context UsingItemTime.mainhand
    scoreboard players operation $A1620.Charge Temporary %= $30 Const
    execute if score $A1620.Charge Temporary matches 0 if data storage api: Return{IsThresholdOrMore:true} run function asset:artifact/1620.satelite_drop/using_item/charge/

# リセット
    scoreboard players reset $A1620.Charge
