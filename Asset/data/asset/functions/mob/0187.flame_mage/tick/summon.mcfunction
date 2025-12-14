#> asset:mob/0187.flame_mage/tick/summon
#
# 魔法を召喚する
#
# @within function asset:mob/0187.flame_mage/tick/shoot_magic

# スピード設定
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.StepPerTick set value 2
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.StepPerTick set value 3

# 召喚
    data modify storage api: Argument.ID set value 2073
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute anchored eyes facing entity @p[gamemode=!spectator,distance=..20] eyes positioned ^ ^ ^-0.25 run function api:object/summon
