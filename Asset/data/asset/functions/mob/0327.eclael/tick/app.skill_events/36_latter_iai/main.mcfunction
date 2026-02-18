#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main
#
# アニメーションのイベントハンドラ 居合
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 攻撃
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/animation_0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 1..7 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 1..7 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
        execute if score @s 93.AnimationTimer matches 16..25 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 16..25 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 移動
        execute if score @s 93.AnimationTimer matches 1..6 at @s run tp @s ^ ^0.3 ^-0.5
        execute if score @s 93.AnimationTimer matches 7 at @p[tag=!PlayerShouldInvulnerable,distance=..30] facing entity @s feet rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/set_move_position
        execute if score @s 93.AnimationTimer matches 10 positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run tp @s ^-4 ^1.5 ^-6 ~ 0
        execute if score @s 93.AnimationTimer matches 13 positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run tp @s ^4 ^1 ^-6 ~ 0
        execute if score @s 93.AnimationTimer matches 16 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/move_to_player
        execute if score @s 93.AnimationTimer matches 35..38 at @s positioned ^ ^ ^1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 35..38 at @s positioned ^ ^ ^1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 35..38 at @s positioned ^ ^ ^1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 35..38 at @s positioned ^ ^ ^1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 39..41 at @s run tp @s ~ ~ ~ ~60 ~
        execute if score @s 93.AnimationTimer matches 7 rotated ~60 ~ positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/particle_jump
        execute if score @s 93.AnimationTimer matches 10 rotated ~-90 ~ positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/particle_jump
        execute if score @s 93.AnimationTimer matches 13 rotated ~60 ~ positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/particle_jump
        execute if score @s 93.AnimationTimer matches 35 rotated ~ ~ positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/particle_jump
        execute if score @s 93.AnimationTimer matches 38 rotated ~ ~ positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/particle_jump
    # 演出
        execute if score @s 93.AnimationTimer matches 7 at @s run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 7 at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 7 at @s run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 10 at @s run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 10 at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 10 at @s run particle flash ^ ^1 ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 13 at @s run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 13 at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 13 at @s run particle flash ^ ^1 ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 16 at @s run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 16 at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 16 at @s run particle flash ^ ^1 ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 35 at @s run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 35 at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 35 at @s run particle flash ^ ^1 ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 38 at @s run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 38 at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 38 at @s run particle flash ^ ^1 ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 61 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 82 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
        execute if score @s 93.AnimationTimer matches 82 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.7

# 攻撃
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/hit
    execute if score @s 93.AnimationTimer matches 50 at @a[gamemode=!spectator,tag=93.Skill.IaiMove.Hit,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_0
    execute if score @s 93.AnimationTimer matches 53 at @a[gamemode=!spectator,tag=93.Skill.IaiMove.Hit,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_1
    execute if score @s 93.AnimationTimer matches 56 at @a[gamemode=!spectator,tag=93.Skill.IaiMove.Hit,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_2
    execute if score @s 93.AnimationTimer matches 59 at @a[gamemode=!spectator,tag=93.Skill.IaiMove.Hit,distance=..80] rotated ~180 ~ run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_0
    execute if score @s 93.AnimationTimer matches 59 run tag @a[tag=93.Skill.IaiMove.Hit] remove 93.Skill.IaiMove.Hit

# ハードでは折り返す
    execute if score @s 93.AnimationTimer matches 45 if predicate api:global_vars/difficulty/min/3_blessless unless entity @a[gamemode=!spectator,tag=93.Skill.IaiMove.Hit,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/turn

# 終了
    execute if score @s 93.AnimationTimer matches 106.. run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/end
