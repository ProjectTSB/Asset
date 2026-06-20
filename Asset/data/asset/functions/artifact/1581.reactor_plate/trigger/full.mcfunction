#> asset:artifact/1581.reactor_plate/trigger/full
#
# スペシャル攻撃
#
# @within function asset:artifact/1581.reactor_plate/trigger/crit



# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1581.reactor_plate/trigger/vfx/special2
# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 5500..5550
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# 効果削除
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
