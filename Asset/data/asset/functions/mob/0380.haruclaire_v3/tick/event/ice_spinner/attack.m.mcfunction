#> asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m
#
# アイススピナー
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start
#    function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start_long

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1

# 弾召喚
    data modify storage api: Argument.ID set value 2165
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IceSpinner
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    $data modify storage api: Argument.FieldOverride.IsLong set value $(IsLong)
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=AK.EntityRoot,limit=1] MobUUID
    function api:object/summon
