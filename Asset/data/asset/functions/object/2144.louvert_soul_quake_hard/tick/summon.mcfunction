#> asset:object/2144.louvert_soul_quake_hard/tick/summon
#
# クエイク召喚
#
# @within function asset:object/2144.louvert_soul_quake_hard/tick/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2143
    function api:object/summon
