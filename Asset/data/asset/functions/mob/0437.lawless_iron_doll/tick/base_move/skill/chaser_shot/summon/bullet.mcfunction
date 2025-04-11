#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/bullet
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/activate

# オブジェクト2242番をデータ指定し、付近のプレイヤーのほうを向いて召喚する
    data modify storage api: Argument.ID set value 2242
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.ChaserShot
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @p[gamemode=!spectator,distance=..32] eyes run function api:object/summon

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 1 1.2
