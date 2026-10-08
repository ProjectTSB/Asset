#> asset:artifact/1581.reactor_plate/trigger/full
#
# スペシャル攻撃(最大チャージ)
#
# @within function asset:artifact/1581.reactor_plate/trigger/crit
#> Private
# @private
    #declare tag 17X.Hit


# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1581.reactor_plate/trigger/vfx/special2

# 範囲
    execute at @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..7] add 17X.Hit

# ダメージ(威力固定のため計算はなし)防御、属性貫通
    data modify storage api: Argument.Damage set value 5600
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.BypassArmorDefense set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value true
    execute as @e[type=#lib:living_without_player,tag=17X.Hit,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# スタック削除
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
    tag @e[type=#lib:living_without_player,tag=17X.Hit,tag=!Uninterferable,distance=..10] remove 17X.Hit
