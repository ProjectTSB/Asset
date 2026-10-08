#> asset:effect/0374.charge_plasma/re-given/charge/check/3
#
#
#
# @within function asset:effect/0374.charge_plasma/re-given/

# MPが一定値以上なら攻撃
    data modify storage api: Argument.Threshold set from storage asset:context this.MPThreshold[1]
    function api:mp/check
    execute if data storage api: Return{IsThresholdOrMore:true} run function asset:effect/0374.charge_plasma/re-given/charge/3
