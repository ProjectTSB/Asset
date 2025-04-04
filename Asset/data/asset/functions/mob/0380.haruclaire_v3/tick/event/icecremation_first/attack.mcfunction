#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/attack
#
# アイスクリメーション・連続突進
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/

# 弾召喚
    data modify storage api: Argument.ID set value 2159
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.ICFirst
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsSkipSummon set value true
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=AK.EntityRoot,limit=1] MobUUID
    execute at @s positioned ^ ^-0.6 ^ run function api:object/summon
