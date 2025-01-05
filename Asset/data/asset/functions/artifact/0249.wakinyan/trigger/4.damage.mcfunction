#> asset:artifact/0249.wakinyan/trigger/4.damage
#
# ダメージを与える
#
# @within function asset:artifact/0249.wakinyan/trigger/3.main

# 演出
    particle dust 0 0 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if score @p[tag=this] Temporary matches 0 run particle dust 1 1 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if score @p[tag=this] Temporary matches 1 run particle dust 1 0.6 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if score @p[tag=this] Temporary matches 2 run particle dust 1 0 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    execute if score @p[tag=this] Temporary matches 3 run particle dust 1 0 1 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
    playsound entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 3 2 0
    playsound entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 3 2 0
    # summon lightning_bolt ~ ~ ~ {damage:0.001d,CustomName:'[{"text": "雷鳥の囃子","color":"yellow"}]'}
# だめーーじ
    function api:damage/
