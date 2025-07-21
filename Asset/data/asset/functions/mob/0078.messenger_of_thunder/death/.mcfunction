#> asset:mob/0078.messenger_of_thunder/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/78/death

# スーパーメソッド呼び出し
    function asset:mob/super.death

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~0.2 ~ 0 0 0 0.4 250
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.5 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.5 0 0

# ボスドロ
    data modify storage api: Argument.ID set value 1061
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

    data modify storage api: Argument.ID set value 1149
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# 色々消し飛ばす
    function asset:mob/0078.messenger_of_thunder/kill_objects
