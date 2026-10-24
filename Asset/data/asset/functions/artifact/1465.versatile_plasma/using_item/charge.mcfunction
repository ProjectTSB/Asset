#> asset:artifact/1465.versatile_plasma/using_item/charge
#
#
#
# @within function asset:artifact/1465.versatile_plasma/using_item/2.check_condition

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 長押しした時間からEffect374のスタックを更新
    execute if data storage asset:context UsingItemTime{mainhand:25} run function asset:artifact/1465.versatile_plasma/using_item/charge/check/2
    execute if data storage asset:context UsingItemTime{mainhand:50} run function asset:artifact/1465.versatile_plasma/using_item/charge/check/3
