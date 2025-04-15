#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/tick

# オブジェクトをデータ指定した上で召喚する
    data modify storage api: Argument.ID set value 2246
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.LingeringLaser
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# レーザー部分
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/laser/shoot

# サウンド
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 2 1.8
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 2 2.0
    playsound tsb_sounds:blaster2 hostile @a ~ ~ ~ 2 1.5

# パーティクル
    particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 1 10 force @a[distance=..32]
    particle minecraft:dust 0.5 0 1 2 ~ ~ ~ 0.5 0.5 0.5 0 20 force @a[distance=..32]
    particle minecraft:dust 0.2 0 0.3 1 ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[distance=..32]
