#> asset:object/2268.gem_upper_shot/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2268.gem_upper_shot/tick/

#> Val
# @private
# @within function asset:object/2268.gem_upper_shot/tick/damage
    #declare objective CO.UpperShot.Hit

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] unless score @s CO.UpperShot.Hit matches 1.. run function api:damage/
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run scoreboard players set @s CO.UpperShot.Hit 20
    function api:damage/reset
