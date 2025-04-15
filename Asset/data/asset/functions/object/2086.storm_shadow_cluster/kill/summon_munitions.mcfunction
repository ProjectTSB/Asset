#> asset:object/2086.storm_shadow_cluster/kill/summon_munitions
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/kill/summon_cluster.m

# 攻撃箇所表示
    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:50,Scale:12f}
    data modify storage api: Argument.ID set value 2201
    execute positioned ~ ~0.01 ~ run function api:object/summon

# クラスター弾召喚
    execute store result storage api: Argument.FieldOverride.DetonateTime int 1 run random value 20..30
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.ID set value 2089
    execute positioned ~ ~0.01 ~ run function api:object/summon
