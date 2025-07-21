#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_attack_position
#
# テルツェット・アライニング
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 攻撃位置召喚
    execute positioned ^10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BG.Temp.AttackPosition"]}
    execute positioned ^3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BG.Temp.AttackPosition"]}
    execute positioned ^-3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BG.Temp.AttackPosition"]}
    execute positioned ^-10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BG.Temp.AttackPosition"]}

# 安置を作る
    kill @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1]

# 残り召喚
    execute positioned ^16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BG.Temp.AttackPosition"]}
    execute positioned ^-16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BG.Temp.AttackPosition"]}
