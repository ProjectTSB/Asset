#> asset:mob/0341.louvert/tick/general/11.soul_quake_hard
#
# ソウルクエイク 追尾弾召喚
#
# @within function asset:mob/0341.louvert/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2144
    function api:object/summon
