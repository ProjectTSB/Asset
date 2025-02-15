#> asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/attack
#
# アイスバレット・ソレイユ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 2 2

# 弾召喚
    data modify storage api: Argument.ID set value 2154
    data modify storage api: Argument.FieldOverride.Damage set value 70.0f
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @p[tag=AK.MainTarget] feet run function api:object/summon
