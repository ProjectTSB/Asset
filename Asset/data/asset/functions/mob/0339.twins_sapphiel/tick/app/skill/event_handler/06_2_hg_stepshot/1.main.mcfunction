#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/1.main
#
# アニメーションのイベントハンドラ Hg踏みつけ射撃
# 転倒したプレイヤーを踏みつけて撃つ
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：85tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..13 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 55..60 at @s positioned ^ ^0.3 ^-0.8 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 61..65 at @s positioned ^ ^-0.2 ^-0.7 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 66..75 at @s positioned ^ ^-0.1 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9F.AnimationTimer matches 1 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/4.calc_vector
        execute if score @s 9F.AnimationTimer matches 2..13 at @s run function asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound block.grass.step hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9F.AnimationTimer matches 8 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9F.AnimationTimer matches 19 run playsound entity.hoglin.step hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 55 run playsound block.grass.step hostile @a ~ ~ ~ 2 0.7
    execute if score @s 9F.AnimationTimer matches 55 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 30 at @s positioned ^-0.1 ^0.6 ^0.9 facing entity @a[tag=!PlayerShouldInvulnerable,distance=..3,sort=nearest,limit=1] eyes run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 34 at @s positioned ^-0.1 ^0.6 ^0.9 facing entity @a[tag=!PlayerShouldInvulnerable,distance=..3,sort=nearest,limit=1] eyes run function asset:mob/0339.twins_sapphiel/app/attack/1.shot

# 終了
    execute if score @s 9F.AnimationTimer matches 86.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/2.end
