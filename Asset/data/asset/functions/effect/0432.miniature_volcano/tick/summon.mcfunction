#> asset:effect/0432.miniature_volcano/tick/summon
#
#
#
# @within function asset:effect/0432.miniature_volcano/tick/

#> Private
# @private
    #declare tag SpreadMarker

# Field元通りに
    data modify storage asset:context this.Interval._ set from storage asset:context this.Interval.Max

# 演出
    particle lava ~ ~ ~ 0.25 0 0.25 0 2 normal @a
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 1.6
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 0.8

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 1.4
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 1215
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
