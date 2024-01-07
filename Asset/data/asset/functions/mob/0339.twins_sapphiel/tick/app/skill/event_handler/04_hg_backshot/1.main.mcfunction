#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/04_hg_backshot/1.main
#
# アニメーションのイベントハンドラ Hg引き撃ち
# 後退しながら2発射撃する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：60tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/04_hg_backshot/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1 facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9F.AnimationTimer matches 2..20 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 3..8 at @s positioned ^ ^0.1 ^-0.9 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 9..13 at @s positioned ^ ^-0.2 ^-0.7 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 14..25 at @s positioned ^ ^-0.05 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 45..54 at @s positioned ^ ^0.05 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 19 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^0.2 ^1 ^ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 19 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^-0.2 ^1 ^ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 26 positioned ^ ^1 ^0.3 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet positioned ^-0.4 ^ ^ run function asset:mob/0339.twins_sapphiel/app/attack/1.shot
    execute if score @s 9F.AnimationTimer matches 26 positioned ^ ^1 ^0.3 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet positioned ^0.4 ^ ^ run function asset:mob/0339.twins_sapphiel/app/attack/1.shot

# 終了
    execute if score @s 9F.AnimationTimer matches 61.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/04_hg_backshot/2.end
