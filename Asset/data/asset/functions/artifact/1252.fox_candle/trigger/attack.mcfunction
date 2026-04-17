#> asset:artifact/1252.fox_candle/trigger/attack
#
#
#
# @within function asset:artifact/1252.fox_candle/trigger/3.main

# ダメージ
    data modify storage api: Argument.Damage set value 300d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=YS.Target,distance=..16] run function api:damage/
    function api:damage/reset

# 以下DoT
    # 効果時間
        data modify storage api: Argument.Duration set value 180
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 50
    # ダメージ間隔
        data modify storage api: Argument.FieldOverride.Tick.Max set value 20

# 付与
    data modify storage api: Argument.ID set value 352
    execute as @e[type=#lib:living_without_player,tag=YS.Target,distance=..16] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
