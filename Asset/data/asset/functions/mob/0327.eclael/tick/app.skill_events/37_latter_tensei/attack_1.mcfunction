#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_1
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.8
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    particle flash ~ ~1 ~ 1 0.1 1 0 20 force

# 全プレイヤーに向けて発動
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80] facing entity @s feet as @e[type=wither_skeleton,tag=93.EntityRoot,distance=..80] positioned as @s run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_1_shot
