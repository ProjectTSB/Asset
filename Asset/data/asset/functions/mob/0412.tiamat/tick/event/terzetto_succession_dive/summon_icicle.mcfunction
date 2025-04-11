#> asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/summon_icicle
#
# テルツェット・サクセッション
#
# @within
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_b/
#    function asset:mob/0412.tiamat/tick/event/terzetto_aligning/
#    function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:8,Tags:["BG.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:8,Tags:["BG.Temp.AttackPosition"]}
    spreadplayers ~ ~ 5 8 false @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition]
