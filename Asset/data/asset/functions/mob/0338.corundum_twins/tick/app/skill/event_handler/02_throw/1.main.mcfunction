#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/02_throw/1.main
#
# スキルイベントハンドラ ぶん投げ
# ルビィをぶん投げて高威力の大剣振り下ろし攻撃を行う
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

# 集合位置の決定
    execute if score @s 9E.SkillTimer matches 1 at @a[tag=!PlayerShouldInvulnerable,distance=..60,sort=random,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^1 ^12 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9E.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 1 as @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9E.SkillTimer matches 1 at @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,limit=1] run summon area_effect_cloud ^1 ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:17,Tags:["Object","9E.Temp.Target.Aec.0","9F.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 1 at @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,limit=1] run summon area_effect_cloud ^-1 ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:17,Tags:["Object","9E.Temp.Target.Aec.0","9G.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 1 as @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0

## 集合
# 双子に指示
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/00_goalong/1.start
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/00_goalong/1.start
# 待機
    execute if score @s 9E.SkillTimer matches 2 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 2 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

## ぶん投げ
# 双子に指示
    execute if score @s 9E.SkillTimer matches 3 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/02_throw/1.start
    execute if score @s 9E.SkillTimer matches 3 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/02_throw/1.start
# 移動位置計算
    execute if score @s 9E.SkillTimer matches 24 run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:35,Tags:["Object","9E.Temp.Target.Aec.0","9G.Temp.Target.Aec.0"]}
    execute if score @s 9E.SkillTimer matches 24..52 at @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target,limit=1] run tp @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] ^ ^0.2 ^1.2 ~180 ~
# 攻撃位置決定
    execute if score @s 9E.SkillTimer matches 53 at @a[tag=!PlayerShouldInvulnerable,distance=..40,sort=nearest,limit=1] rotated ~ 0 run tp @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] ^ ^0.1 ^ ~ ~
# 待機
    execute if score @s 9E.SkillTimer matches 54 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 54 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

# 終了
    execute if score @s 9E.SkillTimer matches 58.. run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/02_throw/2.end
