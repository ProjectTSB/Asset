#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_horizontal
#
# アイスバレット・エトワール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/

# 攻撃位置召喚
    summon area_effect_cloud ~ ~ ~ {Tags:["AK.Temp.AttackRotation"],Duration:1}

# 弾召喚
    scoreboard players operation @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] MobUUID = @s MobUUID
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_horizontal_summon
