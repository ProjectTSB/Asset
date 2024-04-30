#> asset:mob/0380.haruclaire_v3/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0380.haruclaire_v3/_/tick

# ターゲット決定
    tag @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] add AK.Model.Target

# タイマー増加
    scoreboard players add @s AK.AnimationTimer 1

# キラキラ演出
    execute if predicate lib:random_pass_per/5 run particle firework ~ ~2 ~ 0.5 0.5 0.5 0 1

# デバッグ
    execute if score @s AK.AnimationTimer matches ..0 run tag @s add AK.Skill.Rod.Idle

# アニメーションのイベントハンドラ
    execute if score @s AK.AnimationTimer matches 1.. run function asset:mob/0380.haruclaire_v3/tick/app/events/

# ターゲットリセット
    tag @e[type=item_display,tag=AK.Model.Target] remove AK.Model.Target
