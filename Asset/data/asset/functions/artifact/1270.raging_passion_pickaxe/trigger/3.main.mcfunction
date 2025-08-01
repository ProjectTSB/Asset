#> asset:artifact/1270.raging_passion_pickaxe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1270.raging_passion_pickaxe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 自身にマインソウル(ID:291)を付与
    data modify storage api: Argument.ID set value 291
    data modify storage api: Argument.Duration set value 400
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# Object召喚x3
    execute anchored eyes positioned ^ ^-0.5 ^0.3 run function asset:artifact/1270.raging_passion_pickaxe/trigger/summon_object
    execute anchored eyes positioned ^1.5 ^-0.5 ^0.3 run function asset:artifact/1270.raging_passion_pickaxe/trigger/summon_object
    execute anchored eyes positioned ^-1.5 ^-0.5 ^0.3 run function asset:artifact/1270.raging_passion_pickaxe/trigger/summon_object
