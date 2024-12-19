#> asset:mob/0237.lunatic_mage/tick/skill/magic_summon/fire
#
# 火魔法を召喚します
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/**

# 実行向きを取る なんでこれで取れるの？
    execute as 0-0-0-0-0 positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage api: Argument.FieldOverride.Rotation set from entity 0-0-0-0-0 Rotation

# スピード設定
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.FieldOverride.Speed set value 3
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Speed set value 4

# 召喚
    data modify storage api: Argument.ID set value 2073
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Fire
    #data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# 消滅
    kill @s
