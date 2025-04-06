#> asset:object/1140.arrow_of_honey_bee/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1140/pre_hit

#> Private
# @private
    #declare tag 1009.Target

# 演出
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] run particle dust 1.000 0.741 0.141 0.8 ~ ~1.2 ~ 0.5 0.5 0.5 0 50 normal
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] run particle minecraft:falling_honey ~ ~1.2 ~ 0.5 0.5 0.5 0 20

# フルチャージか否かで付与する鈍足の時間を変える
    execute unless data storage asset:context this{FullCharge:true} positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] slowness 5 0 true
    execute if data storage asset:context this{FullCharge:true} positioned ~-0.5 ~-0.5 ~-0.5 run effect give @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] slowness 10 0 true

# エフェクト付与
    data modify storage api: Argument.ID set value 327
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.PoisonDamage
    data modify storage api: Argument.FieldOverride.AppliedFrom set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
