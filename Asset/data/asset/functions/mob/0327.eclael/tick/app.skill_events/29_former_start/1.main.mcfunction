#> asset:mob/0327.eclael/tick/app.skill_events/29_former_start/1.main
#
# アニメーションのイベントハンドラ 前半・登場
# 登場演出．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 無敵
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.general/invulnerable/start

# animated javaアニメーション再生 (長さ：100tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/29_former_start/3.play_animation
# 移動
    execute if score @s 93.AnimationTimer matches 1..10 at @s positioned ~ ~0.1 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..25 at @s positioned ~ ~-0.1 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 1 run particle flash ~ ~1.3 ~ 0 0 0 0 1
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 33 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1

# 無敵解除
    execute if score @s 93.AnimationTimer matches 172 run function asset:mob/0327.eclael/tick/app.general/invulnerable/end

# 表情
    execute if score @s 93.AnimationTimer matches 1 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply

# 終了
    execute if score @s 93.AnimationTimer matches 172.. run function asset:mob/0327.eclael/tick/app.skill_events/29_former_start/2.end
