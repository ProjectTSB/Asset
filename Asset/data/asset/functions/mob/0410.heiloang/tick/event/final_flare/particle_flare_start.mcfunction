#> asset:mob/0410.heiloang/tick/event/final_flare/particle_flare_start
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BE.Temp.Flare.SummonPosition"]}
    spreadplayers ~ ~ 8 18 false @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition]
