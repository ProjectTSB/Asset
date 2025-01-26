#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle.m
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# 角度決定用
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] at @s run tp @s ~ ~ ~ ~ -90

# 演出
    $execute if score @s BE.Ehd.Fire matches $(Count) run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle_fire.m {Tick:$(Tick)}
    $execute if score @s BE.Ehd.Water matches $(Count) run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle_ice.m {Tick:$(Tick)}
    $execute if score @s BE.Ehd.Thunder matches $(Count) run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle_thunder.m {Tick:$(Tick)}
