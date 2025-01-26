#> asset:artifact/1116.honey_tart/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1116/use_item/


# 演出
    particle wax_on ~ ~1.2 ~ 0 0 0 20 50 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.3 1.5

# エフェクトを付与
    data modify storage api: Argument.ID set value 270
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
