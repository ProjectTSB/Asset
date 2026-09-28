#> asset:effect/0395.charge_satelite_drop/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0395.charge_satelite_drop/_/end

#> Private
# @private
    #declare score_holder $Stack

# スタックと攻撃情報を引き継いでEffect396付与
    data modify storage api: Argument.ID set value 396
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.FieldOverride.ElementType set from storage asset:context this.ElementType

    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $Stack Temporary
    execute store result storage api: Argument.Duration int 600 run scoreboard players get $Stack Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Stack Temporary
