#> asset:artifact/0250.phoenix/trigger/4.damage
#
# ダメージを与える
#
# @within function asset:artifact/0250.phoenix/trigger/3.main

# 演出
    particle flame ~ ~0.3 ~ 0.4 0.4 0.4 0 150 force @a
    execute if score @p[tag=this] Temporary matches 0 run particle dust 1 0.533 0 1 ~ ~0.3 ~ 0.4 0.4 0.4 0 100 force @a
    execute if score @p[tag=this] Temporary matches 1 run particle dust 1 0 0 1 ~ ~-.3 ~ 0.4 0.4 0.4 0 100 force @a
    execute if score @p[tag=this] Temporary matches 2 run particle dust 0.969 0 1 1 ~ ~0.3 ~ 0.4 0.4 0.4 0 100 force @a
    playsound item.firecharge.use player @a[distance=..100] ~ ~ ~ 10 1 1
    playsound item.firecharge.use player @a[distance=..100] ~ ~ ~ 10 1 1

# ダメージ
    function api:damage/
    data modify entity @s Fire set value 200s
