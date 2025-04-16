#> asset:artifact/0981.soulfire_burst/trigger/summon_object
#
#
#
# @within function asset:artifact/0981.soulfire_burst/trigger/shoot

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 拡散値
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 1

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,distance=..32,limit=1] run function lib:forward_spreader/circle

# マーカーの方を向いて召喚
    data modify storage api: Argument.ID set value 1083
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 95..165
    execute store result storage api: Argument.FieldOverride.TargetID int 1 positioned ^ ^ ^20 run scoreboard players get @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] MobUUID
    execute store result storage api: Argument.FieldOverride.UserID int 1 run data get storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..32,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..32]
