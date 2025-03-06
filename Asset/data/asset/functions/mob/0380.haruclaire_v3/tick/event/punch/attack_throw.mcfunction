#> asset:mob/0380.haruclaire_v3/tick/event/punch/attack_throw
#
# ぶんぶんぶん殴り
#
# @within asset:mob/0380.haruclaire_v3/tick/event/punch/

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.5

# 弾召喚
    data modify storage api: Argument.ID set value 2153
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @p[tag=AK.MainTarget] feet run function api:object/summon
