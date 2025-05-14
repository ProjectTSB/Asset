#> asset:mob/0237.lunatic_mage/tick/skill/magic_summon/fire
#
# 火魔法を召喚します
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/**

# スピード設定
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.Speed set value 3
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Speed set value 4

# 召喚
    data modify storage api: Argument.ID set value 2073
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Fire
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon
