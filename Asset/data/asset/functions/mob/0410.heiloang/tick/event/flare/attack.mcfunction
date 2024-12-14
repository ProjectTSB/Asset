#> asset:mob/0410.heiloang/tick/event/flare/attack
#
# フレア
#
# @within asset:mob/0410.heiloang/tick/event/flare/

# 弾召喚
    data modify storage api: Argument.ID set value 2123
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=nearest,limit=1]
