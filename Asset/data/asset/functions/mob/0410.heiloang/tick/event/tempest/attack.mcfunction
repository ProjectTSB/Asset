#> asset:mob/0410.heiloang/tick/event/tempest/attack
#
# テンペスト
#
# @within asset:mob/0410.heiloang/tick/event/tempest/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 弾召喚
    data modify storage api: Argument.ID set value 2121
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Tempest
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ~ ~2 ~ run function api:object/summon
    kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1]
