#> asset:artifact/0554.catastrophe/attack/damage_sum
#
#
#
# @within function asset:artifact/0554.catastrophe/attack/2.check_condition

#> Private
# @private
    #declare score_holder $DamageSum

# ダメージの合計を計算
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context Attack.Amounts
    function lib:array/math/sum
    execute store result score $DamageSum Temporary run data get storage lib: SumResult 10
    scoreboard players operation @s FE.DamageSum += $DamageSum Temporary
    function lib:array/session/close

# リセット
    scoreboard players reset $DamageSum Temporary
