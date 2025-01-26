#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/30_sync_goalong/1.main
#
# アニメーションのイベントハンドラ Sync集合
# 愛しい妹と合流する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：60tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/30_sync_goalong/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 15 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~

# 演出
    execute if score @s 9F.AnimationTimer matches 13 run playsound entity.phantom.flap hostile @a ~ ~ ~ 3 1.2
    execute if score @s 9F.AnimationTimer matches 13 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 13 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9F.AnimationTimer matches 20 run playsound item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 20 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 20 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10

# 状態更新
    execute if score @s 9F.AnimationTimer matches 1 run tag @s remove 9F.State.Weapon.Hg
    execute if score @s 9F.AnimationTimer matches 1 run tag @s remove 9F.State.Weapon.Sg

# 終了
    execute if score @s 9F.AnimationTimer matches 41.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/30_sync_goalong/2.end
