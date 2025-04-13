#> asset:mob/0380.haruclaire_v3/tick/event/punch/attack_throw
#
# ぶんぶんぶん殴り
#
# @within asset:mob/0380.haruclaire_v3/tick/event/punch/

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.5

# 攻撃位置を向く
    summon area_effect_cloud ~ ~ ~ {Tags:["AK.Temp.AttackRotation"],Duration:1}
    execute facing entity @p[tag=AK.MainTarget,distance=..80] feet run tp @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 弾召喚
    data modify storage api: Argument.ID set value 2153
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Punch3
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
