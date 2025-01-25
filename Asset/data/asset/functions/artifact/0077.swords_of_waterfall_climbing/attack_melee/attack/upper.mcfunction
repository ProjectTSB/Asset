#> asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/upper
#
# 切り上げ
#
# @within function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/

# 演出
    function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/vfx

# 自身に浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 100
    data modify storage api: Argument.Duration set value 3
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 敵に浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 127
    data modify storage api: Argument.Duration set value 3
    execute as @e[type=#lib:living,tag=Victim,tag=!Immovable,distance=..0.01] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ダメージ
    data modify storage api: Argument.Damage set value 45f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01] run function api:damage/
    function api:damage/reset
