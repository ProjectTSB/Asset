#> asset:mob/0341.louvert/tick/general/8.bomb
#
# ボム設置
#
# @within function asset:mob/0341.louvert/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2141
    function api:object/summon
