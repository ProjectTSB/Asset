#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_1_sync_crossfire/1.main
#
# アニメーションのイベントハンドラ Sync交差攻撃
# 敵の左右に回り込みながら銃を乱射する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：85tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_1_sync_crossfire/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..20 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..20 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..4 at @s positioned ^0.1 ^ ^-0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 5..10 at @s positioned ^0.05 ^ ^-0.05 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

    execute if score @s 9F.AnimationTimer matches 21..50 at @s positioned ^-0.52 ^ ^0.05 rotated ~-3 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 21..30 at @s positioned ^ ^0.05 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 51..60 at @s positioned ^-0.4 ^-0.05 ^ rotated ~-3 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 61..75 at @s positioned ^-0.2 ^ ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 64..68 at @s positioned ^ ^0.15 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 69..83 at @s positioned ^ ^-0.05 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 20 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 64 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 25 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 27 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 29 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 31 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 33 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 35 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 37 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 39 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 41 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 43 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 45 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 47 positioned ^ ^ ^5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}

    execute if score @s 9F.AnimationTimer matches 30 positioned ^-0.2 ^1.2 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 32 positioned ^-0.2 ^0.7 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake
    execute if score @s 9F.AnimationTimer matches 34 positioned ^-0.2 ^1.2 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 36 positioned ^-0.2 ^0.7 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake
    execute if score @s 9F.AnimationTimer matches 38 positioned ^-0.2 ^1.2 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 40 positioned ^-0.2 ^0.7 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake
    execute if score @s 9F.AnimationTimer matches 42 positioned ^-0.2 ^1.2 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 44 positioned ^-0.2 ^0.7 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake
    execute if score @s 9F.AnimationTimer matches 46 positioned ^-0.2 ^1.2 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 48 positioned ^-0.2 ^0.7 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake
    execute if score @s 9F.AnimationTimer matches 50 positioned ^-0.2 ^1.2 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 52 positioned ^-0.2 ^0.7 ^0.4 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_fake

# 状態更新
    execute if score @s 9F.AnimationTimer matches 1 run tag @s add 9F.State.Weapon.Hg

# 終了
    execute if score @s 9F.AnimationTimer matches 86.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_1_sync_crossfire/2.end
