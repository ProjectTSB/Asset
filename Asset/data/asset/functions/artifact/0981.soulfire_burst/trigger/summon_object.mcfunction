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
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 150..195
    execute store result storage api: Argument.FieldOverride.TargetID int 1 positioned ^ ^ ^10 run scoreboard players get @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] MobUUID
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..32,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..32]
