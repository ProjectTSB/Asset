#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_2_sync_crossfire_pursuit/1.main
#
# アニメーションのイベントハンドラ Sync交差攻撃・追撃
# ルビィが打ち上げた敵に追撃する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：40tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_2_sync_crossfire_pursuit/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..12 facing entity @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9F.AnimationTimer matches 1..8 at @s positioned ^0.4 ^ ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 9..12 at @s positioned ^0.1 ^ ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 9 at @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 12 at @e[type=area_effect_cloud,tag=9E.Temp.Target.Aec.0,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 9 positioned ^ ^1.2 ^0.8 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot
    execute if score @s 9F.AnimationTimer matches 12 positioned ^ ^1.2 ^0.8 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot

# 終了
    execute if score @s 9F.AnimationTimer matches 41.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/31_2_sync_crossfire_pursuit/2.end
