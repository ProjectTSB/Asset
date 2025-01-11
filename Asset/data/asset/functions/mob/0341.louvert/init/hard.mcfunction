#> asset:mob/0341.louvert/init/hard
#
# ハード処理（現状ボム召喚のみ）
#
# @within function asset:mob/0341.louvert/init/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2142
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..200] run function api:object/summon
