#> asset:artifact/1082.cursed_straw_doll/trigger/4.damage_up
#
# ダメージ上がるときの処理
#
# @within function asset:artifact/1082.cursed_straw_doll/trigger/3.main

# 44%以下なら追加演出
    execute as @e[type=#lib:living,tag=Attacker,distance=..50,limit=1] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes positioned ^ ^ ^-0.2 positioned ~ ~-0.2 ~ rotated ~110 -20 positioned ^ ^ ^0.6 run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/
    execute as @e[type=#lib:living,tag=Attacker,distance=..50,limit=1] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes positioned ^ ^ ^-0.4 positioned ~ ~-0.4 ~ rotated ~-140 15 positioned ^ ^ ^0.6 run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/

# 44%以下ならダメージ量+66.6%
# ダメージ * (1666/1000)で実装
    scoreboard players set $1666 Temporary 1666
    scoreboard players operation $DamageValue Temporary *= $1666 Temporary
    scoreboard players operation $DamageValue Temporary /= $1000 Const

# リセット
    scoreboard players reset $1666 Temporary
