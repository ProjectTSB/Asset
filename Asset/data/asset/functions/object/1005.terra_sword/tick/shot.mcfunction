#> asset:object/1005.terra_sword/tick/shot
#
#
#
# @within function asset:object/1005.terra_sword/tick/

#> SpreadLib
# @private
    #declare tag SpreadMarker1
    #declare tag SpreadMarker2

# サウンド
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 2 2

# 前方拡散して召喚位置を調整する (SpreadMarker1)
    summon marker ~ ~ ~ {Tags:["SpreadMarker1"]}
    data modify storage lib: Argument.Distance set value 0.5f
    data modify storage lib: Argument.Spread set value 1.5f
    execute as @e[type=marker,tag=SpreadMarker1,distance=..1,sort=nearest,limit=1] at @p[tag=Owner] anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle

# Ownerの目線の位置で再度前方拡散 (SpreadMarker2)
    execute positioned as @e[type=marker,tag=SpreadMarker1,distance=..10,sort=nearest,limit=1] run summon marker ^-0.35 ^-0.25 ^ {Tags:["SpreadMarker2"]}
    data modify storage lib: Argument.Distance set value 21.0f
    data modify storage lib: Argument.Spread set value 0.5f
    execute as @e[type=marker,tag=SpreadMarker2,distance=..10,sort=nearest,limit=1] at @s at @p[tag=Owner] anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle

# SpreadMarker1の座標で、SpreadMarker2を向き、弾を召喚
    data modify storage api: Argument.ID set value 1006
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute at @e[type=marker,tag=SpreadMarker1,distance=..10,sort=nearest,limit=1] facing entity @e[type=marker,tag=SpreadMarker2,distance=..40,sort=nearest,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker1,distance=..30]
    kill @e[type=marker,tag=SpreadMarker2,distance=..30]
