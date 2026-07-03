#> asset:object/1061.azure_jelly/tick/attack/summon_wave/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/attack/attack

# トグルで切替
    function asset:object/1061.azure_jelly/tick/attack/summon_wave/switch

# 召喚
    data modify storage api: Argument.ID set value 1062
    data modify storage api: Argument.FieldOverride.LeftRotate set from storage asset:context this.WaveLeftRotate
    execute positioned ~ ~-0.3 ~ run function api:object/summon
