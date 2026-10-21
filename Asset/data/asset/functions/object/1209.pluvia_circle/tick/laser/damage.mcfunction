#> asset:object/1209.pluvia_circle/tick/laser/damage
#
#
#
# @within function asset:object/1209.pluvia_circle/tick/laser/recursive

#> Private
# @private
    #declare score_holder $UserID

# 演出
    function asset:object/1209.pluvia_circle/tick/laser/vfx

# UserID取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
