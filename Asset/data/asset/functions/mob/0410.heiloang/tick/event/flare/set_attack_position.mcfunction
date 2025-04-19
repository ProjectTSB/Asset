#> asset:mob/0410.heiloang/tick/event/flare/set_attack_position
#
# フレアレイ
#
# @within asset:mob/0410.heiloang/tick/event/flare/

# 攻撃位置召喚
    execute positioned ^16.5 ^ ^16 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Flare.SummonPosition"]}
    execute positioned ^10 ^ ^16 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Flare.SummonPosition"]}
    execute positioned ^3.5 ^ ^16 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Flare.SummonPosition"]}
    execute positioned ^-3.5 ^ ^16 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Flare.SummonPosition"]}
    execute positioned ^-10 ^ ^16 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Flare.SummonPosition"]}
    execute positioned ^-16.5 ^ ^16 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Flare.SummonPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition] positioned as @s run tp @s ~ ~ ~ ~180 0
