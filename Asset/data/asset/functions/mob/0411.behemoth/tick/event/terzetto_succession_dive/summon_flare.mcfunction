#> asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare
#
# テルツェット・サクセッション
#
# @within
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/
#    function asset:mob/0411.behemoth/tick/event/terzetto_succession_b/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:8,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:8,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:8,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:8,Tags:["BF.Temp.AttackPosition"]}
    spreadplayers ~ ~ 8 18 false @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition]
