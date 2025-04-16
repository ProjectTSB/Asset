#> asset:mob/0380.haruclaire_v3/tick/event/ice_laser/attack
#
# アイスレーザー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_laser/

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5

# 攻撃位置を向く
    summon area_effect_cloud ~ ~ ~ {Tags:["AK.Temp.AttackRotation"],Duration:1}
    execute facing entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,limit=1] feet run tp @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 弾召喚
    data modify storage api: Argument.ID set value 2155
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Laser
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
