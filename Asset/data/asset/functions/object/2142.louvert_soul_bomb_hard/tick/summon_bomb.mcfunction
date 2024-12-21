#> asset:object/2142.louvert_soul_bomb_hard/tick/summon_bomb
#
# ボム召喚
#
# @within function asset:object/2142.louvert_soul_bomb_hard/tick/cast

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2141
    function api:object/summon
