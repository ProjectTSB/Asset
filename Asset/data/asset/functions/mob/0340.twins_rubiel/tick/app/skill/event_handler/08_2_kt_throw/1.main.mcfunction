#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main
#
# アニメーションのイベントハンドラ Kt大外刈り
# 敵をぶん投げて転倒させ、横一文字に斬る
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

## 大外刈り
# アニメーション再生 (長さ：24tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/3.1.play_start_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..20 positioned as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~ 0
    
# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 攻撃
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.1.damage_catch
    execute if score @s 9G.AnimationTimer matches 17 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.2.damage_throw

## 追撃
# アニメーション再生 (長さ：60tick)
    execute if score @s 9G.AnimationTimer matches 25 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/3.2.play_slash_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 25..48 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 25..37 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 25..37 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 70..80 at @s positioned ^ ^0.02 ^-0.05 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 25..37 run playsound block.grass.step hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 25 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 43 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 2 2
    execute if score @s 9G.AnimationTimer matches 43 run particle crit ^ ^2.2 ^-1 0 0 0 1 10
    execute if score @s 9G.AnimationTimer matches 51 positioned ^ ^1.5 ^1 rotated ~ 30 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/6.1.particle_slash
    execute if score @s 9G.AnimationTimer matches 51 run playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s 9G.AnimationTimer matches 51 run playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9G.AnimationTimer matches 53 run playsound ogg:item.trident.return1 hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 51 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.3
    execute if score @s 9G.AnimationTimer matches 70 run playsound block.grass.step hostile @a ~ ~ ~ 2 1.2

# 攻撃
    execute if score @s 9G.AnimationTimer matches 51 positioned ^ ^1.5 ^2 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.4.damage_pursuit

# 終了
    execute if score @s 9G.AnimationTimer matches 85.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/2.end
