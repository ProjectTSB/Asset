#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack_spread
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spear/

# 弾召喚
    data modify storage api: Argument.ID set value 2157
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.SpreadIceSpear
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~0.5 ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1]
