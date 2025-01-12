#> asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_blitz
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 攻撃位置決定
    execute positioned ^6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
    execute positioned ^ ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
    execute positioned ^-6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Blitz.SummonPosition] positioned as @s run tp @s ~ ~ ~ ~ ~

# 安置決定
    kill @e[type=area_effect_cloud,tag=BE.Temp.Blitz.SummonPosition,sort=random,limit=1]

# 攻撃位置決定
    execute positioned ^12 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
    execute positioned ^-12 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
    execute positioned ^18 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
    execute positioned ^-18 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Blitz.SummonPosition"]}
