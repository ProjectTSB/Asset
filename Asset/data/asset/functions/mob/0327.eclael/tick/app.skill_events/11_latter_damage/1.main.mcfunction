#> asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/1.main
#
# アニメーションのイベントハンドラ 後半・怯み
# プレイヤーの攻撃で怯み，一瞬動きを止める．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/3.play_animation

# 移動
    execute if score @s 93.AnimationTimer matches 1 facing entity @p[distance=..80] feet rotated ~ 0 positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 2..10 positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 表情
    execute if score @s 93.AnimationTimer matches 1 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/variants/blink/apply
    execute if score @s 93.AnimationTimer matches 20 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/variants/wink/apply
    execute if score @s 93.AnimationTimer matches 25 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply

# 終了
# 5tickは怯み継続用のマージン
    execute if score @s 93.AnimationTimer matches 31.. run function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/2.end
