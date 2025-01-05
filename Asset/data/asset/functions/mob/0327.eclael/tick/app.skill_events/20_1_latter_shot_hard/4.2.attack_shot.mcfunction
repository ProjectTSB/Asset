#> asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/4.2.attack_shot
#
# アニメーションのイベントハンドラ 後半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/1.main

# TODO：演出を練る
# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.8
    particle flash ~ ~ ~ 0 0 0 0 1

# 弾召喚
    data modify storage api: Argument.ID set value 328
    execute facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 328
    execute facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~20 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 328
    execute facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~-20 ~ run function api:mob/summon

execute unless entity @e[type=marker,scores={MobID=328}] run say 弾がいない
