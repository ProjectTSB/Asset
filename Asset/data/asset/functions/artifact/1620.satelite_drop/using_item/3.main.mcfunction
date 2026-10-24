#> asset:artifact/1620.satelite_drop/using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1620.satelite_drop/using_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 既にチャージ済みでないならEffect395を付与
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound entity.boat.paddle_water player @a ~ ~ ~ 2 0.5
    playsound block.conduit.activate player @a ~ ~ ~ 1 1.5
