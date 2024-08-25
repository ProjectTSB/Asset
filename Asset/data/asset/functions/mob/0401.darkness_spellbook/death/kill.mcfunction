#> asset:mob/0401.darkness_spellbook/death/kill
#
# キル処理
#
# @within function asset:mob/0401.darkness_spellbook/death/

# 弾幕キル
    execute on vehicle run scoreboard players operation $B5.Temp B5.UUID = @s MobUUID
    execute as @e[type=marker,tag=B5.Marker,distance=..100] if score @s B5.UUID = $B5.Temp B5.UUID run kill @s

# キル
    kill @s

# リセット
    scoreboard players reset $B5.Temp B5.UUID
