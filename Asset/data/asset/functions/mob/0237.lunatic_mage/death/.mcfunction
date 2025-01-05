#> asset:mob/0237.lunatic_mage/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/237/death

# super.death
    function asset:mob/super.death

# 演出
    playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 0.5
    playsound item.trident.thunder hostile @a ~ ~ ~ 1 1.3 0.5
    particle end_rod ~ ~1.2 ~ 0.2 0.2 0.2 0.3 100 normal @a

# 初期地点markerをキル
    kill @e[type=marker,tag=6L.SpawnPoint,distance=..100,limit=1]

# ボスドロ
    data modify storage api: Argument.ID set value 952
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
