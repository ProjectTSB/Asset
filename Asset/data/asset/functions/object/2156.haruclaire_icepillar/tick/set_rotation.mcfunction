#> asset:object/2156.haruclaire_icepillar/tick/set_rotation
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 攻撃位置を向く
    summon area_effect_cloud ~ ~ ~ {Tags:["2156.AttackRotation"],Duration:112}
    execute positioned ~ ~ ~ facing entity @p eyes positioned as @s run tp @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] ~ ~ ~ ~ ~
