#> asset:object/1104.poison_flowgun/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1104/pre_hit

#> Private
# @private
    #declare tag 1009.Target

# エフェクト付与
    data modify storage api: Argument.ID set value 305
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.PoisonDamage
    data modify storage api: Argument.FieldOverride.AppliedFrom set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=1009.Target,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
