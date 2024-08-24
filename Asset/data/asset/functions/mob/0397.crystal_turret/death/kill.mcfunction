#> asset:mob/0397.crystal_turret/death/kill
#
# キル処理
#
# @within function asset:mob/0397.crystal_turret/death/

# 弾幕キル
    execute on vehicle run scoreboard players operation $B1.Temp B1.UUID = @s MobUUID
    execute as @e[type=item_display,tag=B1.Bullet,distance=..100] if score @s B1.UUID = $B1.Temp B1.UUID run kill @s

# キル
    execute on passengers run kill @s
    kill @s

# リセット
    scoreboard players reset $B1.Temp B1.UUID
