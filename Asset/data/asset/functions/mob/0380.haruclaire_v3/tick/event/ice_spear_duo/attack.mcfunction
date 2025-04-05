#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/attack
#
# アイススピア
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/

# 弾召喚
    data modify storage api: Argument.ID set value 2157
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.SpreadIceSpear
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=AK.EntityRoot,limit=1] MobUUID
    function api:object/summon

# 終了
    kill @s
