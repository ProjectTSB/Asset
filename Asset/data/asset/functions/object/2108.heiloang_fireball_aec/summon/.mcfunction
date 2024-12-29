#> asset:object/2108.heiloang_fireball_aec/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2108/summon

# 元となるEntityを召喚する
    summon area_effect_cloud ~ ~ ~ {Tags:["ObjectInit","BE.Object"],Particle:"block air",Radius:6f,Duration:500}
