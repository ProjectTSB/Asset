#> asset:artifact/1581.reactor_plate/trigger/crit
#
# スペシャル攻撃
#
# @within function asset:artifact/1581.reactor_plate/trigger/3.main

# 特定 ID の Effect 情報を取得
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/get/from_id
# 10層なら最大攻撃に
    execute if data storage api: Return.Effect{Stack:10} run return run function asset:artifact/1581.reactor_plate/trigger/full
# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1581.reactor_plate/trigger/vfx/special1


# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 1500..1550
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# 効果削除
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
