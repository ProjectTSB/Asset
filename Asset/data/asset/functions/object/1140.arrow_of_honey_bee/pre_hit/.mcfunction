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

# 鈍足をTickから秒に変換しマクロで付与
    execute store result storage asset:temp Args.Duration int 0.05 run data get storage asset:context this.Duration
    execute as @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] run function asset:object/1140.arrow_of_honey_bee/pre_hit/slowness.m with storage asset:temp Args
    data remove storage asset:temp Args

# エフェクト付与
    data modify storage api: Argument.ID set value 327
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.PoisonDamage
    data modify storage api: Argument.FieldOverride.DamageInterval set from storage asset:context this.PoisonDamageInterval
    data modify storage api: Argument.FieldOverride.AppliedFrom set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
