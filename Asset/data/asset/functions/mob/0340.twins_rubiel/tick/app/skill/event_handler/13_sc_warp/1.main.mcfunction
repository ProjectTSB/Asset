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
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~30 0 run summon area_effect_cloud ^ ^1.2 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:160,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.0"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~90 0 run summon area_effect_cloud ^ ^1.2 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:160,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.1"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~150 0 run summon area_effect_cloud ^ ^1.2 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:160,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.2"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~210 0 run summon area_effect_cloud ^ ^1.2 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:160,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.2"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~270 0 run summon area_effect_cloud ^ ^1.2 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:160,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.1"]}
    execute if score @s 9G.AnimationTimer matches 13 at @a[tag=!PlayerShouldInvulnerable,distance=..50,sort=nearest,limit=1] rotated ~330 0 run summon area_effect_cloud ^ ^1.2 ^8 {CustomNameVisible:0b,Particle:"block air",Duration:160,Tags:["Object","9G.Temp.Target.Warp","9G.Temp.Target.Warp.0"]}

## 攻撃
# 移動
    execute if score @s 9G.AnimationTimer matches 40 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0,sort=random,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 40 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0,sort=nearest,limit=1]
# アニメーション再生 (長さ：13tick)
    execute if score @s 9G.AnimationTimer matches 40 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.2.play_animation_1
# 演出
    execute if score @s 9G.AnimationTimer matches 53 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 53 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 51 at @s positioned ^ ^1 ^1.8 rotated ~90 ~-20 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 51 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 攻撃
# 移動
    execute if score @s 9G.AnimationTimer matches 60 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2,sort=random,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 60 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2,sort=nearest,limit=1]
# アニメーション再生 (長さ：13tick)
    execute if score @s 9G.AnimationTimer matches 60 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.2.play_animation_1
# 演出
    execute if score @s 9G.AnimationTimer matches 73 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 73 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 71 at @s positioned ^ ^1 ^1.8 rotated ~90 ~-20 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 71 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 斬り上げ
# 移動
    execute if score @s 9G.AnimationTimer matches 80 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1,sort=random,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 80 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1,sort=nearest,limit=1]
    execute if score @s 9G.AnimationTimer matches 81..90 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# アニメーション再生 (長さ：18tick)
    execute if score @s 9G.AnimationTimer matches 80 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.3.play_animation_2
# 演出
    execute if score @s 9G.AnimationTimer matches 98 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 98 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 91 at @s positioned ^ ^1 ^2.3 rotated ~90 ~60 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 91 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 投げ
# 移動
    execute if score @s 9G.AnimationTimer matches 100 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0,sort=random,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 100 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.0,sort=nearest,limit=1]
    execute if score @s 9G.AnimationTimer matches 100..110 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
# アニメーション再生 (長さ：18tick)
    execute if score @s 9G.AnimationTimer matches 100 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.4.play_animation_3
# 演出
    execute if score @s 9G.AnimationTimer matches 118 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 118 run particle flash ~ ~1 ~ 0 0 0 0 1
# 攻撃
    execute if score @s 9G.AnimationTimer matches 105 run particle electric_spark ^ ^1.2 ^1 0 0 0 0.3 10
    execute if score @s 9G.AnimationTimer matches 105 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 2 1
    execute if score @s 9G.AnimationTimer matches 110 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.2.throw_scythe

## 斬り上げ
# 移動
    execute if score @s 9G.AnimationTimer matches 120 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2,sort=random,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 120 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.2,sort=nearest,limit=1]
    execute if score @s 9G.AnimationTimer matches 121..130 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.6 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# アニメーション再生 (長さ：18tick)
    execute if score @s 9G.AnimationTimer matches 120 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.3.play_animation_2
# 演出
    execute if score @s 9G.AnimationTimer matches 138 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 138 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 131 at @s positioned ^ ^1 ^2.3 rotated ~90 ~60 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 131 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 終了
# 移動
    execute if score @s 9G.AnimationTimer matches 140 positioned as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1,sort=random,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 140 at @s run kill @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp.1,sort=nearest,limit=1]
    execute if score @s 9G.AnimationTimer matches 141..150 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 141..155 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 141..155 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.7 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 156..160 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 177 at @s positioned ^ ^1 ^-7 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 177 at @s positioned ^ ^ ^-2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 177 at @s positioned ^ ^ ^-2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# アニメーション再生 (長さ：36tick)
    execute if score @s 9G.AnimationTimer matches 140 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/3.5.play_end_animation
# 演出
    execute if score @s 9G.AnimationTimer matches 140 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9G.AnimationTimer matches 144 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9G.AnimationTimer matches 148 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9G.AnimationTimer matches 176 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 176 run particle flash ~ ~1 ~ 0 0 0 0 1
# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 160 at @s positioned ^ ^1 ^2.3 rotated ~90 ~-20 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.1.particle_slash_red
# 攻撃
    execute if score @s 9G.AnimationTimer matches 160 positioned ^ ^1 ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.1.damage_slash

## 共通
# ワープポイント演出
    execute as @e[type=area_effect_cloud,tag=9G.Temp.Target.Warp] at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/6.3.particle_warppoint

# 状態更新
    execute if score @s 9G.AnimationTimer matches 182 run tag @s remove 9G.State.Weapon.Sc

# 終了
    execute if score @s 9G.AnimationTimer matches 182.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/2.end
