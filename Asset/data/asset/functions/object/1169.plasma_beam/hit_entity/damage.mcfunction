#> asset:object/1169.plasma_beam/hit_entity/damage
#
# ダメージ処理
#
# @within function asset:object/1169.plasma_beam/hit_entity/

#> Private
# @private
    #declare score_holder $UserID

    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# ノックバック
    data modify storage lib: Argument.VectorMagnitude set value 0.75d
    function lib:motion/looking

# リセット
    scoreboard players reset $UserID
