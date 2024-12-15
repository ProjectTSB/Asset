#> asset:mob/0410.heiloang/tick/event/heil_disaster/summon_attack_pos
#
# ヘイルディザスター
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/

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
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BE.Temp.AttackPosition"]}
    spreadplayers ~ ~ 10 18 false @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition]
