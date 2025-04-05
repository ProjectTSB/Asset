#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/attack_1
#
# アイスバレット・デュオ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 2 2

# 安置対策
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.IceBulletDuoNear
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは ちかづきすぎた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# 弾召喚
    execute at @s run tp @s ~ ~ ~ ~22.5 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~45 ~
    data modify storage api: Argument.ID set value 2149
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceBulletDuo
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s positioned ^ ^0.8 ^2 run function api:object/summon
    tp @s ~ ~ ~ ~ ~
