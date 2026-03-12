#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/shoot
#
# ビッグひのたま・シュート！
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

# 拡散弾
    # ID指定
        data modify storage api: Argument.ID set value 2136
    # データ設定
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
        execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @p[gamemode=!spectator,distance=..64] UserID
    # 召喚
        function api:object/summon

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 1

# サウンド
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.6
