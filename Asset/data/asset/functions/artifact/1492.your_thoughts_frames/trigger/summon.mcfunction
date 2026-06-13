#> asset:artifact/1492.your_thoughts_frames/trigger/summon
#
# オーブの召喚
#
# @within function asset:artifact/1492.your_thoughts_frames/trigger/3.main

# 演出
    particle item pink_stained_glass ~ ~1 ~ 0.3 0.5 0.3 0.1 100 normal @a

# 召喚（MP回復量は円周率にちなみ31.4回復する。）
    data modify storage api: Argument.ID set value 1164
    data modify storage api: Argument.FieldOverride.MPHeal set value 31.4
    execute positioned ~ ~1 ~ run function api:object/summon
