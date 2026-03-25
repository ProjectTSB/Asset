#> asset:object/2217.karmic_conviction_bone/tick/shot_summon
#
#
#
# @within function asset:object/2217.karmic_conviction_bone/tick/kill

# 召喚のデータ設定
    data modify storage api: Argument.ID set value 2218
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Shot
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# プレイヤーの方向を見て
    execute facing entity @p[gamemode=!spectator,distance=..20] eyes facing ^ ^ ^1 run function api:object/summon
