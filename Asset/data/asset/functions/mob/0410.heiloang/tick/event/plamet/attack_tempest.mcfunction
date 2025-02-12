#> asset:mob/0410.heiloang/tick/event/plamet/attack_tempest
#
# 急降下
#
# @within
#    function asset:mob/0410.heiloang/tick/event/plamet/
#    function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/
#    function asset:mob/0410.heiloang/tick/event/terzetto_succession_b/
#    function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/
#    function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# 弾召喚
    data modify storage api: Argument.ID set value 2121
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute if score @s BE.Charge.Count matches ..0 run data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    execute if score @s BE.Charge.Count matches 1 run data modify storage api: Argument.FieldOverride.Damage set value 70.0f
    execute if score @s BE.Charge.Count matches 2.. run data modify storage api: Argument.FieldOverride.Damage set value 80.0f
    execute positioned ~ ~-100 ~ run function api:object/summon
