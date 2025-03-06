#> asset:mob/0380.haruclaire_v3/tick/event/ice_laser/attack
#
# アイスレーザー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_laser/

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5

# 弾召喚
    data modify storage api: Argument.ID set value 2155
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,limit=1] feet run function api:object/summon
