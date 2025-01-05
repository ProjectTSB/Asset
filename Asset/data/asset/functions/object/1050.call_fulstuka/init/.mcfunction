#> asset:object/1050.call_fulstuka/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1050/init

scoreboard players set @s 1050.ActionTime -10

# 演出
    particle dust 1 0 0.749 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 1 0 0.749 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50
    function asset:object/1050.call_fulstuka/init/particle

    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.7 0
