#> asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/check_damage
#
#
#
# @within function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition

# 対象選定
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=Enemy,distance=..64,sort=nearest,limit=3] run function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/get_damage/pre

# 各値の合計を算出
# Sum(Amounts[]) -> Amount
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Temp.Main.Amounts
    function lib:array/math/sum
    data modify storage asset:temp Temp.Main.Amount set from storage lib: SumResult
    function lib:array/session/close

# ダメージ量比例でMP減らす量を決めておく
    execute store result storage asset:temp Temp.MPReduce double -0.01 run data get storage asset:temp Temp.Main.Amount 1

# 消費APIと同じ丸めで必要MPを取得して判定する
    execute store result storage api: Argument.Threshold double -0.1 run data get storage asset:temp Temp.MPReduce 10
    function api:mp/check
    execute unless data storage api: Return{IsThresholdOrMore:true} run tag @s remove CanUsed
