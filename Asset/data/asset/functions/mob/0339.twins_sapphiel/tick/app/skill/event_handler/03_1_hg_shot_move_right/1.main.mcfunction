#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_right/1.main
#
# アニメーションのイベントハンドラ Hg側転射撃
# 側転しつつ4発射撃する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：45tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_right/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..30 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 5..23 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..12] at @s positioned ^-0.1 ^ ^0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 1..4 at @s positioned ^-0.2 ^-0.1 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 5..11 at @s positioned ^-0.6 ^0.3 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 12..16 at @s positioned ^-0.7 ^0.08 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 17..23 at @s positioned ^-0.6 ^-0.3 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 24..28 at @s positioned ^-0.2 ^ ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 7 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 12 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 15 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.1"]}

    execute if score @s 9F.AnimationTimer matches 10 positioned ^ ^1 ^0.5 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot
    execute if score @s 9F.AnimationTimer matches 13 positioned ^ ^1 ^0.5 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 17 positioned ^ ^1 ^0.5 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot
    execute if score @s 9F.AnimationTimer matches 20 positioned ^ ^1 ^0.5 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak

# 終了
    execute if score @s 9F.AnimationTimer matches 46.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_right/2.end
