#> asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition/check_damage
#
#
#
# @within function asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Current
    #declare score_holder $Require

# 対象選定
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=Enemy,distance=..64,sort=nearest,limit=3] run function asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition/get_damage/

# 各値の合計を算出
# Sum(Amounts[]) -> Amount
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Temp.Amounts
    function lib:array/math/sum
    data modify storage asset:temp Temp.Amount set from storage lib: SumResult
    function lib:array/session/close

# 総ダメージ量のN%分のMPがあるかをチェック
    function api:mp/get_current
    execute store result score $Current Temporary run data get storage api: Return.CurrentMP 10
    execute store result score $Require Temporary run data get storage asset:temp Temp.Amount 0.25
    execute if score $Current Temporary >= $Require Temporary run 
