#> asset:mob/0410.heiloang/tick/event/plamet/attack_tempest
#
# 急降下
#
# @within
#    function asset:mob/0410.heiloang/tick/event/plamet/
#    function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/
#    function asset:mob/0410.heiloang/tick/event/terzetto_succession_b/

# 弾召喚
    data modify storage api: Argument.ID set value 2121
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 30.0f
    execute positioned ~ ~-100 ~ run function api:object/summon
