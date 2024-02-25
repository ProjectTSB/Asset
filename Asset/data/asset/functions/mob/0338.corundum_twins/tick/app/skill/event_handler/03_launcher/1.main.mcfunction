#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/03_launcher/1.main
#
# スキルイベントハンドラ ランチャー
# 敵の動きを邪魔し、空中からランチャーを撃ち込む
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

# 集合位置の決定
    execute if score @s 9E.SkillTimer matches 1 at @a[tag=!PlayerShouldInvulnerable,sort=random,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^1 ^7 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9E.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 1 as @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9E.SkillTimer matches 1 at @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,limit=1] run summon area_effect_cloud ^-1.2 ^ ^-0.5 {CustomNameVisible:0b,Particle:"block air",Duration:17,Tags:["Object","9E.Temp.Target.Aec.0","9F.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 1 at @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,limit=1] run summon area_effect_cloud ^1.2 ^ ^0.5 {CustomNameVisible:0b,Particle:"block air",Duration:17,Tags:["Object","9E.Temp.Target.Aec.0","9G.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 1 as @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0

## 集合
# 双子に指示
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/00_goalong/1.start
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/00_goalong/1.start
# 待機
    execute if score @s 9E.SkillTimer matches 2 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 2 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

## 武器召喚
# 双子に指示
    execute if score @s 9E.SkillTimer matches 3 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/03_launcher/3.start_equip
    execute if score @s 9E.SkillTimer matches 3 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/03_launcher/2.start_equip
# 待機
    execute if score @s 9E.SkillTimer matches 4 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 4 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

## ワープ連撃開始
# 双子に指示
    execute if score @s 9E.SkillTimer matches 5 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/03_launcher/1.start
    execute if score @s 9E.SkillTimer matches 5 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/03_launcher/1.start
# 待機
    execute if score @s 9E.SkillTimer matches 6 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 6 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

## ランチャー射撃
# サフィに指示
    execute if score @s 9E.SkillTimer matches 7 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/03_launcher/2.start_shot
    # execute if score @s 9E.SkillTimer matches 7 run tag @s add 9E.State.GetAwait.Rubiel
# 待機
    execute if score @s 9E.SkillTimer matches 8 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 8 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

# 終了
    execute if score @s 9E.SkillTimer matches 17.. run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/03_launcher/2.end
