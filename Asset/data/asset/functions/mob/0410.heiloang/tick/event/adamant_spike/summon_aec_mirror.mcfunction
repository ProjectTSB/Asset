#> asset:mob/0410.heiloang/tick/event/adamant_spike/summon_aec_mirror
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/adamant_spike/summon_aec

# 攻撃位置召喚
    execute positioned ^-16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}

# ハード以上の場合、多重召喚
    execute if predicate api:global_vars/difficulty/max/normal run return 0

# 攻撃位置召喚
    execute positioned ^-16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
