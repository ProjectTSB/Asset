#> asset:artifact/1606.dimension_knife/trigger/fx/dimension_slash
#
#
#
# @within function asset:artifact/1606.dimension_knife/trigger/fx/

# playsound
    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.1
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.7 1.2
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.7 0.7
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.7 0.5

# 召喚
    data modify storage api: Argument.ID set value 1187
    execute positioned as @e[type=#lib:living_without_player,tag=Victim,tag=Enemy,distance=..6] positioned ~ ~1.5 ~ run function api:object/summon
