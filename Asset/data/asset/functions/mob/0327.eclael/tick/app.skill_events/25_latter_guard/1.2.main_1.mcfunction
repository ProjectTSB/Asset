#> asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.2.main_1
#
# アニメーションのイベントハンドラ 後半・ガード
# プレイヤーの攻撃を受け止める．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/3.2.play_1_animation

# 移動
    execute if score @s 93.AnimationTimer matches 1 facing entity @p[distance=..80] feet rotated ~ 0 positioned ^ ^ ^-0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 2..6 positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 7..12 positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# ガード継続
    execute if score @s 93.AnimationTimer matches 10 run tag @s add 93.Temp.PrepareGuard

# 表情
    execute if score @s 93.AnimationTimer matches 1 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply

# 終了
    execute if score @s 93.AnimationTimer matches 21.. run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/2.end
