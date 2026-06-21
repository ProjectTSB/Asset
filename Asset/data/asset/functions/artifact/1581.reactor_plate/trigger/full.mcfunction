#> asset:artifact/1581.reactor_plate/trigger/full
#
# スペシャル攻撃(最大チャージ)
#
# @within function asset:artifact/1581.reactor_plate/trigger/crit



# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1581.reactor_plate/trigger/vfx/special2

# ダメージ(威力固定のため計算はなし)
    data modify storage api: Argument.Damage set value 5200
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.BypassArmorDefense set value true
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# スタック削除
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
