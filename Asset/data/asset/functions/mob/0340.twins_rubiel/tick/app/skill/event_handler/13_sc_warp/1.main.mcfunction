#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/1.main
#
# アニメーションのイベントハンドラ Scワープ連撃
# ワープポイントを設置し、連続攻撃を行う
# シンクロ攻撃専用モーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

## ワープポイント設置
# アニメーション再生 (長さ：33tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.1.play_set_animation
# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 13 run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 30 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 30 run particle flash ~ ~1 ~ 0 0 0 0 1
# ワープポイント設置
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] rotated ~ 0 run summon area_effect_cloud ^8 ^1.2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.0"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] rotated ~60 0 run summon area_effect_cloud ^8 ^1.2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.1"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] rotated ~120 0 run summon area_effect_cloud ^8 ^1.2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.2"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] rotated ~180 0 run summon area_effect_cloud ^8 ^1.2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.0"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] rotated ~240 0 run summon area_effect_cloud ^8 ^1.2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.1"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] rotated ~300 0 run summon area_effect_cloud ^8 ^1.2 ^ {CustomNameVisible:0b,Particle:"block air",Duration:82,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.2"]}

## 攻撃
# 移動
    execute if score @s 9G.AnimationTimer matches 40 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0,sort=random,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 40 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0,sort=random,limit=1]
# アニメーション再生 (長さ：13tick)
    execute if score @s 9G.AnimationTimer matches 40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.2.play_animation_1
# 演出
    execute if score @s 9G.AnimationTimer matches 53 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 53 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 51 at @s rotated ~-30 ~ positioned ^ ^1 ^1.8 rotated ~-70 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 51 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 攻撃
# 移動
    execute if score @s 9G.AnimationTimer matches 60 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1,sort=random,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 60 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1,sort=random,limit=1]
# アニメーション再生 (長さ：13tick)
    execute if score @s 9G.AnimationTimer matches 60 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.2.play_animation_1
# 演出
    execute if score @s 9G.AnimationTimer matches 63 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 63 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 61 at @s rotated ~-30 ~ positioned ^ ^1 ^1.8 rotated ~-70 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 61 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 斬り上げ
# 移動
    execute if score @s 9G.AnimationTimer matches 70 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2,sort=random,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 70 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2,sort=random,limit=1]
# アニメーション再生 (長さ：18tick)
    execute if score @s 9G.AnimationTimer matches 70 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.2.play_animation_1
# 演出
    execute if score @s 9G.AnimationTimer matches 88 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 88 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 81 at @s rotated ~-30 ~ positioned ^ ^1 ^2.3 rotated ~30 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 81 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash


## 共通
# ワープポイント演出
    execute as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp] at @s facing entity @p feet rotated ~ 0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.3.particle_warppoint

# 終了
    execute if score @s 9G.AnimationTimer matches 140.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/2.end
