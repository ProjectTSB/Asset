#> asset:artifact/0008.mysterious_tambourine/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/8/click/


# 演出
    tellraw @a[distance=..16] [{"text":"不思議なタンバリン","color":"yellow"},{"text":"の音が聞こえた。\n不思議と力がみなぎってくる。","color":"white"}]
    playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1
    playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.6
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 0.8 0.8
    playsound ogg:random.levelup player @a ~ ~ ~ 0.5 1.2
    playsound ogg:random.levelup player @a ~ ~ ~ 0.7 1.5
    playsound ogg:random.levelup player @a ~ ~ ~ 0.7 2
    particle minecraft:crit ~ ~1 ~ 0.25 0.1 0.25 0.7 20
    #particle minecraft:trial_spawner_detection ~ ~ ~ 1 1 1 0 100
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0008.mysterious_tambourine/click/vfx

# 鼓舞(ID:272)を付与
    data modify storage api: Argument.ID set value 272
    execute as @a[distance=..16] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
