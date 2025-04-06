#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_spin_richt
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# 弾召喚
    data modify storage api: Argument.ID set value 2112
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.BlitzSpin
    function api:object/summon
