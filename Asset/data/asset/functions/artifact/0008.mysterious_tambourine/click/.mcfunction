#> asset:artifact/0008.mysterious_tambourine/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/8/click/

# 演出
    tellraw @a[distance=..16] [{"text":"不思議なタンバリン","color":"yellow"},{"text":"の音が聞こえた。\n不思議と力がみなぎってくる。","color":"white"}]
    # particle minecraft:trial_spawner_detection ~ ~ ~ 1 1 1 0 100
    execute as @a positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0008.mysterious_tambourine/click/vfx

# 鼓舞(ID:272)を付与
    data modify storage api: Argument.ID set value 272
    execute as @a run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
