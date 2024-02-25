#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_1_rubiel_cover/1.main
#
# スキルイベントハンドラ ルビィ怯みかばい攻撃
# ルビィがサフィをかばう
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch


# ルビィに指示
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/04_cover/1.start

# 攻撃位置の決定
    execute if score @s 9E.SkillTimer matches 1 at @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @a[tag=!PlayerShouldInvulnerable,distance=..30,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^0.5 ^ {CustomNameVisible:0b,Particle:"block air",Duration:5,Tags:["Object","9G.Temp.Target.Aec.1"]}
    execute if score @s 9E.SkillTimer matches 24 at @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @a[tag=!PlayerShouldInvulnerable,distance=..30,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^0.5 ^ {CustomNameVisible:0b,Particle:"block air",Duration:5,Tags:["Object","9G.Temp.Target.Aec.1"]}

# 終了
    execute if score @s 9E.SkillTimer matches 25.. run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_1_rubiel_cover/2.end
