#> asset:artifact/1252.fox_candle/trigger/attack
#
#
#
# @within function asset:artifact/1252.fox_candle/trigger/3.main

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 1.2 0
    playsound block.fire.ambient player @a ~ ~ ~ 1 1.2 0
    playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.2
    execute at @e[type=#lib:living_without_player,tag=YS.Target,distance=..16] positioned ~ ~0.4 ~ run function asset:artifact/1252.fox_candle/trigger/vfx

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
    execute store result storage api: Argument.FieldOverride.AppliedFrom int 1 run scoreboard players get @s UserID
    execute as @e[type=#lib:living_without_player,tag=YS.Target,distance=..16] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
