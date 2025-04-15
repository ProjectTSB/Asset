#> asset:mob/0380.haruclaire_v3/tick/event/press/attack_piece_0
#
# 押しつぶし
#
# @within asset:mob/0380.haruclaire_v3/tick/event/press/attack_0

# 回転
    execute at @s run tp @s ~ ~ ~ ~ -60
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletPiece
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsPiece set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^0.3 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~60 -60
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletPiece
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsPiece set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^0.3 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~60 -60
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletPiece
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsPiece set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^0.3 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~60 -60
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletPiece
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsPiece set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^0.3 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~60 -60
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletPiece
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsPiece set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^0.3 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~60 -60
# 弾召喚
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletPiece
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsPiece set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^ ^0.3 run function api:object/summon

# 終了
    kill @s
