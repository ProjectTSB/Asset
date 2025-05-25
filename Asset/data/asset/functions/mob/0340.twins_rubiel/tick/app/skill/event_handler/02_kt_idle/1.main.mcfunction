#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/1.main
#
# アニメーションのイベントハンドラ Kt待機
# 刀装備時の待機モーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：60tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 15 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9G.AnimationTimer matches 15 if score @s 9G.MoodPoint matches 50.. run particle note ~ ~2.2 ~ 0.3 0.3 0.3 0.7 1
    execute if score @s 9G.AnimationTimer matches 30 if score @s 9G.MoodPoint matches 50.. run particle note ~ ~2.2 ~ 0.3 0.3 0.3 0.7 1
    execute if score @s 9G.AnimationTimer matches 45 if score @s 9G.MoodPoint matches 50.. run particle note ~ ~2.2 ~ 0.3 0.3 0.3 0.7 1
    execute if score @s 9G.AnimationTimer matches 15 if score @s 9G.MoodPoint matches ..-50 run particle angry_villager ~ ~2.2 ~ 0.3 0.3 0.3 0 1
    execute if score @s 9G.AnimationTimer matches 30 if score @s 9G.MoodPoint matches ..-50 run particle angry_villager ~ ~2.2 ~ 0.3 0.3 0.3 0 1
    execute if score @s 9G.AnimationTimer matches 45 if score @s 9G.MoodPoint matches ..-50 run particle angry_villager ~ ~2.2 ~ 0.3 0.3 0.3 0 1

# ガード受け付け
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.IsGuard
    execute if score @s 9G.AnimationTimer matches 61 run tag @s remove 9G.State.IsGuard

# 待機カウント増加
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/5.idle_timer
    scoreboard players reset $Uid Temporary

# 終了
    execute if score @s 9G.AnimationTimer matches 61.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/2.end
