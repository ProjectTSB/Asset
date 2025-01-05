#> asset:mob/0084.falcios_priest/tick/shoot2
#
# 発射処理2
#
# @within function asset:mob/0084.falcios_priest/tick/shoot

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes

# 発射
    data modify storage api: Argument.ID set value 2069
    data modify storage api: Argument.FieldOverride.Damage set value 36.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# 消滅
    kill @s
