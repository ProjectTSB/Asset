#> asset:object/2133.red_knihgt_death/tick/summon_string
#
#
#
# @within function asset:object/2133.red_knihgt_death/tick/

# 演出
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.portal.ambient hostile @a ~ ~ ~ 1 1.5 1
    particle minecraft:portal ~ ~ ~ 0 0 0 2 200

# 召喚
    data modify storage api: Argument.ID set value 2134
    function api:object/summon
