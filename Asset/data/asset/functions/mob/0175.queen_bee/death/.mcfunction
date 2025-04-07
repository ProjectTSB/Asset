#> asset:mob/0175.queen_bee/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/175/death

# 演出
    playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 2
    particle cloud ~ ~ ~ 1 1 1 0.1 100
    particle explosion_emitter ~ ~ ~ 1 1 1 0.1 10

# ボスドロ
    data modify storage api: Argument.ID set value 793
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# スポーンマーカー削除
    kill @e[type=marker,tag=4V.SpawnMarker,distance=..100]

# スーパーメソッド呼び出し
    function asset:mob/super.death
