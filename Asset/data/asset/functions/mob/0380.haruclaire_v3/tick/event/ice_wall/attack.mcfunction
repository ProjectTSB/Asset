#> asset:mob/0380.haruclaire_v3/tick/event/ice_wall/attack
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_wall/

# 弾召喚
    data modify storage api: Argument.ID set value 2151
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceWall
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1]
