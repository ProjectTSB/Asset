#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/attack
#
# アイスバレット・デュオ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/

# 弾召喚
    execute if entity @s[tag=AK.IceCrepation.Pos.A] run data modify storage api: Argument.ID set value 2159
    execute if entity @s[tag=AK.IceCrepation.Pos.B] run data modify storage api: Argument.ID set value 2160
    data modify storage api: Argument.FieldOverride.Damage set value 65.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=AK.EntityRoot,limit=1] MobUUID
    execute at @s positioned ^ ^ ^ run function api:object/summon

# 終了
    kill @s
