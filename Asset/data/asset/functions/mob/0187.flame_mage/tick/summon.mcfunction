#> asset:mob/0187.flame_mage/tick/summon
#
# 魔法を召喚する
#
# @within function asset:mob/0187.flame_mage/tick/shoot_magic

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes

# スピード設定
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Speed set value 3

# 召喚
    data modify storage api: Argument.ID set value 2073
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# 消滅
    kill @s
