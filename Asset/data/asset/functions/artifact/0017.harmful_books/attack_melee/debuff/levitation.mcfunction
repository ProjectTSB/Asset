#> asset:artifact/0017.harmful_books/attack_melee/debuff/levitation
#
# 浮遊を付与
#
# @within function asset:artifact/0017.harmful_books/attack_melee/3.1.add_effect

# 対象がImmovableならreturn
    execute if entity @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run return 0

# 自身に浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 4
    data modify storage api: Argument.Duration set value 200
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
