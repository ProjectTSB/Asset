#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_horizontal_summon
#
# アイスバレット・エトワール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_horizontal

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 2 2

# 攻撃対象を見る
    execute facing entity @p[tag=AK.MainTarget,distance=..80] feet run tp @s ~ ~ ~ ~ ~

# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBullet
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~-15 ~
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBullet
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if predicate api:global_vars/difficulty/min/hard at @s positioned ^ ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~-15 ~
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBullet
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~45 ~
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBullet
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if predicate api:global_vars/difficulty/min/hard at @s positioned ^ ^ ^6 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~15 ~
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBullet
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^6 run function api:object/summon
