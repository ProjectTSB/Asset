#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_circle_summon
#
# アイスバレット
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_circle

# 攻撃対象を見る
    execute facing entity @p[tag=AK.MainTarget] feet run tp @s ~ ~ ~ ~ ~-8

# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~-18 ~8
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^-0.5 ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~36 ~
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^0.5 ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~-23 ~8
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~14 ~
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^6 run function api:object/summon
