#> asset:artifact/1069.sprout_of_dappled_sunlight/heal/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1069/heal/

# 演出
    particle dust 1 1000000000 1 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 50 normal @a
    particle happy_villager ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.7
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.8

# 芽吹きバフ(ID 257)を得る
    data modify storage api: Argument.ID set value 257
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
