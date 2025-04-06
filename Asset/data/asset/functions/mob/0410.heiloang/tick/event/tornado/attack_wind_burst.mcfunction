#> asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
#
# 竜巻・なぎはらい火炎放射の風弾
#
# @within asset:mob/0410.heiloang/tick/event/tornado/
# @within asset:mob/0410.heiloang/tick/event/sweep/

# 攻撃用AEC召喚
    data modify storage api: Argument.ID set value 2119
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.WindBurst
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1]
