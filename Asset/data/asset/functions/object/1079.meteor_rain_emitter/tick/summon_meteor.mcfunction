#> asset:object/1079.meteor_rain_emitter/tick/summon_meteor
#
# メテオ召喚
#
# @within function asset:object/1079.meteor_rain_emitter/tick/

#> このファイル内で使われるタグ
# @private
    #declare tag SpreadMarker
    #declare tag SpreadFacingMarker
    #declare tag MeteorTarget

# 拡散させる
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[32d,32d],[0.0d,0.0d],[32d,32d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] at @s run function lib:spread_entity/

# 付近のランダムな敵一体を対象として狙う
    execute positioned ~-40 ~-8 ~-40 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=79,dy=24,dz=79,sort=random,limit=1] add MeteorTarget
    execute if entity @e[type=#lib:living,tag=MeteorTarget,distance=..50,limit=1] store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @e[type=#lib:living,tag=MeteorTarget,distance=..50,limit=1] MobUUID

# メテオのブレ用の拡散

    # ターゲットがいる場合
        execute at @e[type=#lib:living,tag=MeteorTarget,distance=..50,limit=1] run summon marker ~ ~ ~ {Tags:["SpreadFacingMarker"]}
        data modify storage lib: Argument.Bounds set value [[8d,8d],[0.0d,0.0d],[8d,8d]]

    # ターゲットがいない場合
        execute unless entity @e[type=#lib:living,tag=MeteorTarget,distance=..50,limit=1] run summon marker ~ ~ ~ {Tags:["SpreadFacingMarker"]}
        execute unless entity @e[type=#lib:living,tag=MeteorTarget,distance=..50,limit=1] run data modify storage lib: Argument.Bounds set value [[16d,16d],[0.0d,0.0d],[16d,16d]]

    # 拡散
        execute as @e[type=marker,tag=SpreadFacingMarker,distance=..128,limit=1] at @s run function lib:spread_entity/

# 40m上からターゲットに向けてメテオを召喚
    data modify storage api: Argument.ID set value 1080
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute at @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] positioned ~ ~40 ~ facing entity @e[type=marker,tag=SpreadFacingMarker,distance=..128,limit=1] feet run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..128,limit=1]
    kill @e[type=marker,tag=SpreadFacingMarker,distance=..128,limit=1]
    tag @e[type=#lib:living,tag=MeteorTarget,distance=..70,limit=1] remove MeteorTarget
