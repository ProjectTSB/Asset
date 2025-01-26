#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_2_sapphiel_cover/1.main
#
# スキルイベントハンドラ サフィ怯みかばい攻撃
# サフィがルビィをかばう
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch


# サフィに指示
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/04_cover/1.start

# 攻撃位置の決定
    execute if score @s 9E.SkillTimer matches 1 at @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @a[tag=!PlayerShouldInvulnerable,distance=..30,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^0.5 ^ {CustomNameVisible:0b,Particle:"block air",Duration:5,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9E.SkillTimer matches 30 at @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @a[tag=!PlayerShouldInvulnerable,distance=..30,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^0.5 ^ {CustomNameVisible:0b,Particle:"block air",Duration:5,Tags:["Object","9F.Temp.Target.Aec.1"]}

# 終了
    execute if score @s 9E.SkillTimer matches 31.. run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_2_sapphiel_cover/2.end
