#> asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
#
# アイスピラー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/

# アイスピラー召喚
    data modify storage api: Argument.ID set value 2156
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Pillar
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if entity @s[tag=AK.Temp.IsRight] run data modify storage api: Argument.FieldOverride.IsRight set value true
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..20,sort=nearest,limit=1]
