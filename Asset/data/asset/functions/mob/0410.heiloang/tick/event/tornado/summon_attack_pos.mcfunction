#> asset:mob/0410.heiloang/tick/event/tornado/summon_attack_pos
#
# 竜巻・なぎはらい火炎放射の風弾
#
# @within asset:mob/0410.heiloang/tick/event/tornado/
# @within asset:mob/0410.heiloang/tick/event/sweep/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    spreadplayers ~ ~ 10 18 false @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition]
