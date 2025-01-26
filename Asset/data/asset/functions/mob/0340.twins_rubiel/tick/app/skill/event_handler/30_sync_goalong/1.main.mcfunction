#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/1.main
#
# アニメーションのイベントハンドラ Sync集合
# 大好きな姉と合流する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：60tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 15 at @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~

# 演出
    execute if score @s 9G.AnimationTimer matches 13 run playsound entity.phantom.flap hostile @a ~ ~ ~ 3 1.2
    execute if score @s 9G.AnimationTimer matches 13 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 13 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9G.AnimationTimer matches 20 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.8
    execute if score @s 9G.AnimationTimer matches 20 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9G.AnimationTimer matches 20 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# 状態更新
    execute if score @s 9G.AnimationTimer matches 1 run tag @s remove 9G.State.Weapon.Kt
    execute if score @s 9G.AnimationTimer matches 1 run tag @s remove 9G.State.Weapon.Sc

# 終了
    execute if score @s 9G.AnimationTimer matches 41.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/30_sync_goalong/2.end
