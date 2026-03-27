#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/1.main
#
# アニメーションのイベントハンドラ Ktワープ連撃
# ワープポイントを設置し、連続攻撃を行う
# 最後の突きはジャンプで回避可能
# ジャンプで回避したうえで刀の上に着地された場合、体制を崩す
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

## ワープポイント設置
# アニメーション再生 (長さ：36tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/3.1.play_set_animation
# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 13 run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 30 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 30 run particle flash ~ ~1 ~ 0 0 0 0 1
# ワープポイント設置
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^2 ^0.2 ^3 {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.0"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^-8 ^6 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.1"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^2 ^2 ^12 {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.2"]}
# 移動
    execute if score @s 9G.AnimationTimer matches 35 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 35 run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0]

## 2連斬り
# アニメーション再生 (長さ：30tick)
    execute if score @s 9G.AnimationTimer matches 37 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/3.2.play_animation_1
# 演出
    execute if score @s 9G.AnimationTimer matches 37 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 37 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 46 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 46 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 48 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 54 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 54 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 63 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 63 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 46 at @s rotated ~-30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 47 at @s rotated ~30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 54 at @s rotated ~-30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.1.particle_slash_red
    execute if score @s 9G.AnimationTimer matches 55 at @s rotated ~30 ~ positioned ^ ^1 ^1.2 rotated ~90 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.1.particle_slash_red
# 移動
    execute if score @s 9G.AnimationTimer matches 42..49 at @s positioned ^ ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 50..57 at @s positioned ^ ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 61..65 at @s positioned ^ ^0.1 ^-0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 65 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~-0.8 ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 65 run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1]
# 攻撃
    execute if score @s 9G.AnimationTimer matches 47 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.1.damage_slash
    execute if score @s 9G.AnimationTimer matches 55 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.1.damage_slash

## ナイフ投げ
# アニメーション再生 (長さ：15tick)
    execute if score @s 9G.AnimationTimer matches 68 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/3.3.play_animation_2
# 移動
    execute if score @s 9G.AnimationTimer matches 68..76 at @s positioned ^ ^0.2 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 77..82 at @s positioned ^ ^-0.1 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 81 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 81 run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2]
# 演出
    execute if score @s 9G.AnimationTimer matches 68 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 68 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 80 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 80 run particle flash ~ ~1 ~ 0 0 0 0 1
# 攻撃
    execute if score @s 9G.AnimationTimer matches 68 positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","9G.Temp.Target.Aec.0"]}
    execute if score @s 9G.AnimationTimer matches 73 as @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0,sort=nearest,limit=1] at @s positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run tp @s ~ ~1 ~
    execute if score @s 9G.AnimationTimer matches 75 at @s run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.2.throw_knife

## 突き
# アニメーション再生 (長さ：55tick)
    execute if score @s 9G.AnimationTimer matches 84 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/3.4.play_animation_3
# 移動
    execute if score @s 9G.AnimationTimer matches 84..100 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 84..88 at @s positioned ^ ^0.5 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 125..135 at @s positioned ^ ^0.05 ^-0.05 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9G.AnimationTimer matches 84 positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^6 ^-6 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 84 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/4.calc_vector_0
        execute if score @s 9G.AnimationTimer matches 95 positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-2 {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}
        execute if score @s 9G.AnimationTimer matches 95 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/4.calc_vector_1
        execute if score @s 9G.AnimationTimer matches 86..90 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
        execute if score @s 9G.AnimationTimer matches 95..100 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
# 演出
    execute if score @s 9G.AnimationTimer matches 84 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 84 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 125 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 95..100 at @s positioned ~ ~1 ~ run particle firework ~ ~ ~ 0.2 0.2 0.2 0.05 3
    execute if score @s 9G.AnimationTimer matches 95..100 at @s positioned ^-0.5 ^1 ^ rotated ~ 30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.4.particle_spear_slash
    execute if score @s 9G.AnimationTimer matches 101 at @s positioned ^ ^0.1 ^1 rotated ~ -90 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.5.particle_spear_hit
    execute if score @s 9G.AnimationTimer matches 101 at @s positioned ^-0.1 ^1 ^ rotated ~ 30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.6.particle_spear
# 攻撃
    execute if score @s 9G.AnimationTimer matches 101 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.3.damage_spear

## 共通
# ワープポイント演出
    execute as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/6.3.particle_warppoint

# 終了
    execute if score @s 9G.AnimationTimer matches 140.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/2.end
