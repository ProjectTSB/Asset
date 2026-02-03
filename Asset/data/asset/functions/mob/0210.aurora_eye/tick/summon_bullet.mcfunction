#> asset:mob/0210.aurora_eye/tick/summon_bullet
#
# オーロラ弾を発射する
#
# @within function asset:mob/0210.aurora_eye/tick/

# 発射
    data modify storage api: Argument.ID set value 2076
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Bullet
    data modify storage api: Argument.FieldOverride.Metadata set from storage asset:context this.Metadata.Bullet
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute anchored eyes positioned ^ ^ ^0.25 facing entity @p[gamemode=!spectator,distance=..64] eyes run function api:object/summon

# リセット
    data modify storage asset:context this.BulletCT._ set from storage asset:context this.BulletCT.Max
