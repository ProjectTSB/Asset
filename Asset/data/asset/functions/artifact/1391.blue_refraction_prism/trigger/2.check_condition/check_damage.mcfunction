#> asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/check_damage
#
#
#
# @within function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition

# @private
    #declare score_holder $Current
    #declare score_holder $Require

# 配列初期化

# 対象選定
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=Enemy,distance=..64,sort=nearest,limit=3] run function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/get_damage/pre

# 各値の合計を算出
# Sum(Amounts[]) -> Amount
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp Temp.Main.Amounts
    function lib:array/math/sum
    data modify storage asset:temp Temp.Main.Amount set from storage lib: SumResult
    function lib:array/session/close

#
    # tellraw @a {"storage":"asset:temp","nbt":"Temp"}

# ダメージ量比例でMP減らす量を決めておく
    execute store result storage asset:temp Temp.MPReduce double -0.01 run data get storage asset:temp Temp.Main.Amount 1

# 総ダメージ量のN%分のMPがあるかをチェック
    function api:mp/get_current
    execute store result score $Current Temporary run data get storage api: Return.CurrentMP 10
    execute store result score $Require Temporary run data get storage asset:temp Temp.MPReduce -10
    execute unless score $Current Temporary >= $Require Temporary run tag @s remove CanUsed

    #tellraw @a {"score":{"name": "$Current","objective": "Temporary"}}
    #tellraw @a {"score":{"name": "$Require","objective": "Temporary"}}

# リセット
    scoreboard players reset $Current Temporary
    scoreboard players reset $Require Temporary
