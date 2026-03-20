#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/summon_shot.m
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_charging

# 床が無い場合、消去
    execute if block ~ ~-1 ~ #lib:no_collision run return run kill @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..10,sort=nearest,limit=1]

# 攻撃判定召喚
    data modify storage api: Argument.ID set value 2268
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Shot
    $data modify storage api: Argument.FieldOverride.PredictionTime set value $(PredictionTime)
    $data modify storage api: Argument.FieldOverride.AttackTime set value $(AttackTime)
    data modify storage api: Argument.FieldOverride.IsNoDamage set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~ ~ run function api:object/summon
    kill @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..10,sort=nearest,limit=1]
