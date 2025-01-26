#> asset:object/1079.meteor_rain_emitter/tick/summon_meteor
#
# メテオ召喚
#
# @within function asset:object/1079.meteor_rain_emitter/tick/

#> このファイル内で使われるタグ
#@private
#declare tag SpreadMarker
#declare tag SpreadFacingMarker
#declare tag MeteorTarget

# 拡散させる
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[32d,32d],[0.0d,0.0d],[32d,32d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] at @s run function lib:spread_entity/

# 付近のランダムな敵一体を対象とし、そいつの周辺に拡散
    tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..64,sort=random,limit=1] add MeteorTarget
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @e[type=#lib:living,tag=MeteorTarget,distance=..64,limit=1] MobUUID
    execute at @e[type=#lib:living,tag=MeteorTarget,distance=..64,limit=1] run summon marker ~ ~ ~ {Tags:["SpreadFacingMarker"]}
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0.0d,0.0d],[8d,8d]]
    execute as @e[type=marker,tag=SpreadFacingMarker,distance=..128,limit=1] at @s run function lib:spread_entity/

# メテオを召喚
    data modify storage api: Argument.ID set value 1080
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute at @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] facing entity @e[type=marker,tag=SpreadFacingMarker,distance=..128,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..128,limit=1]
    kill @e[type=marker,tag=SpreadFacingMarker,distance=..128,limit=1]
    tag @e[type=#lib:living,tag=MeteorTarget,distance=..64,limit=1] remove MeteorTarget
