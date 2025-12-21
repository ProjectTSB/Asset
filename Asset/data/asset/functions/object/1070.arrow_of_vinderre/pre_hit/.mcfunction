#> asset:object/1070.arrow_of_vinderre/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1070/pre_hit

#> Private
# @private
    #declare tag 1009.Target
    #declare tag 1009.Player

# Enhanced == true でなければ何もしない
    execute unless data storage asset:context this{Enhanced:true} run return 0

# エフェクト付与
    data modify storage api: Argument.ID set value 279
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @e[type=#lib:living_without_player,tag=1009.Target,distance=..0.1] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 25% の確率で敵が Immovable でなければ TP する
    execute unless predicate lib:random_pass_per/25 run return 0
    execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[type=#lib:living,tag=1009.Target,tag=Immovable,dx=0] run return 0

# TP
    execute as @e[type=#lib:living_without_player,tag=1009.Target,distance=..0.1] at @a[tag=1009.Player] rotated ~ 0 run tp @s ^ ^ ^2

# SE
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1 0
    execute at @a[tag=1009.Player] run playsound minecraft:entity.enderman.teleport player @a ^ ^ ^2 1 1 0
