#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/1.main
#
# アニメーションのイベントハンドラ Hgワープポイント射撃
# ワープポイントを経由して敵を撃つ
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：85tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..40 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate

# 演出
    execute if score @s 9F.AnimationTimer matches 13 run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 46 positioned ^-0.5 ^1 ^0.8 rotated ~30 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot
    execute if score @s 9F.AnimationTimer matches 51 positioned ^-0.5 ^1 ^0.8 rotated ~30 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot
    execute if score @s 9F.AnimationTimer matches 56 positioned ^-0.5 ^1 ^0.8 rotated ~30 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot
    execute if score @s 9F.AnimationTimer matches 48 positioned ^0.5 ^1 ^0.8 rotated ~-30 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot
    execute if score @s 9F.AnimationTimer matches 53 positioned ^0.5 ^1 ^0.8 rotated ~-30 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot
    execute if score @s 9F.AnimationTimer matches 58 positioned ^0.5 ^1 ^0.8 rotated ~-30 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_shot

# ワープポイント設置
    execute if score @s 9F.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^-7 ^3 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9F.Temp.Target.Warp","9F.Temp.Target.Warp.0"]}
    execute if score @s 9F.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^ ^5.5 ^9 {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9F.Temp.Target.Warp","9F.Temp.Target.Warp.1"]}
    execute if score @s 9F.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^7 ^3 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9F.Temp.Target.Warp","9F.Temp.Target.Warp.2"]}

# 攻撃
    execute if score @s 9F.AnimationTimer matches 54 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 56 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 58 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 64 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 66 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 68 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 60 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.0,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp
    execute if score @s 9F.AnimationTimer matches 62 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp
    execute if score @s 9F.AnimationTimer matches 64 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.2,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp
    execute if score @s 9F.AnimationTimer matches 70 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.0,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp
    execute if score @s 9F.AnimationTimer matches 72 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.1,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp
    execute if score @s 9F.AnimationTimer matches 74 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp.2,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_from_warp

# ワープポイント演出
    execute if score @s 9F.AnimationTimer matches 13 as @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp] at @s run particle flash ~ ~ ~ 0 0 0 0 1
    execute as @e[type=area_effect_cloud,tag=9F.Temp.Target.Warp] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/4.particle_warppoint

# 終了
    execute if score @s 9F.AnimationTimer matches 86.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/2.end
