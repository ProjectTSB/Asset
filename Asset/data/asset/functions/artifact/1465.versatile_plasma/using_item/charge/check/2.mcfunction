#> asset:artifact/1465.versatile_plasma/using_item/charge/check/2
#
#
#
# @within function asset:artifact/1465.versatile_plasma/using_item/charge

# MPが一定値以上なら攻撃
    data modify storage api: Argument.Threshold set value 25
    function api:mp/check
    execute if data storage api: Return{IsThresholdOrMore:true} run function asset:artifact/1465.versatile_plasma/using_item/charge/2
