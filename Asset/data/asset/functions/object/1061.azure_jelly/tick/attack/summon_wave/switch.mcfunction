#> asset:object/1061.azure_jelly/tick/attack/summon_wave/switch
#
#
#
# @within function asset:object/1061.azure_jelly/tick/attack/summon_wave/

# トグル
    execute if data storage asset:context this{WaveLeftRotate:true} run return run data modify storage asset:context this.WaveLeftRotate set value false
    execute unless data storage asset:context this{WaveLeftRotate:true} run data modify storage asset:context this.WaveLeftRotate set value true
