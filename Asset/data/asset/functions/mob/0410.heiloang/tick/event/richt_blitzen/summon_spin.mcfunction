#> asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_spin
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/

# 弾召喚
    data modify storage api: Argument.ID set value 2112
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.BlitzSpin
    function api:object/summon
