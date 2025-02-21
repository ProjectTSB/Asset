#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main
#
# アニメーションのイベントハンドラ 天泣
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# ジャンプ
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_0
    # プレイヤー位置に移動
        execute if score @s 93.AnimationTimer matches 29 at @r[distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/move_to_player

# 落下
    execute if score @s 93.AnimationTimer matches 60 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_1
    # 攻撃
        execute if score @s 93.AnimationTimer matches 39 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_fall

# 回転斬り
    execute if score @s 93.AnimationTimer matches 119 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_2
    # 攻撃
        execute if score @s 93.AnimationTimer matches 129 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/prediction
        execute if score @s 93.AnimationTimer matches 174 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_spin
    # 落雷
        execute if score @s 93.AnimationTimer matches 170 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/summon_attack_pos
        execute if score @s 93.AnimationTimer matches 172 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..11] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
        execute if score @s 93.AnimationTimer matches 197 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..16] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
        execute if score @s 93.AnimationTimer matches 222 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..21] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
        execute if score @s 93.AnimationTimer matches 247 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..26] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check

# 終了
    execute if score @s 93.AnimationTimer matches 264.. run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/end
