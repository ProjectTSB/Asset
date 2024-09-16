#> asset:artifact/1069.sprout_of_dappled_sunlight/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1069.sprout_of_dappled_sunlight/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1000000000 1 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 50 normal @a
    particle happy_villager ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.7
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.8

# 芽吹きバフ(ID 257)を得る
    data modify storage api: Argument.ID set value 257
    function api:entity/mob/effect/give
