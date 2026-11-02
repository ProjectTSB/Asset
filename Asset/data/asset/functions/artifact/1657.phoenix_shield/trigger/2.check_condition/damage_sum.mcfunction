#> asset:artifact/1657.phoenix_shield/trigger/2.check_condition/damage_sum
#
#
#
# @within function asset:artifact/1657.phoenix_shield/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $1A1.Damage

# ダメージの合計を計算
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context Attack.Amounts
    function lib:array/math/sum
    execute store result score $1A1.Damage Temporary run data get storage lib: SumResult 10
    scoreboard players operation @s 1A1.DamageSum += $1A1.Damage Temporary
    function lib:array/session/close

# リセット
    scoreboard players reset $1A1.Damage Temporary
