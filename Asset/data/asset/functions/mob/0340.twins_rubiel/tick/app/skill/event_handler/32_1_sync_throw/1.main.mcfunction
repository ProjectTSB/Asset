#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main
#
# アニメーションのイベントハンドラ Syncぶん投げ
# サフィに投げられた勢いのまま大剣で攻撃する
# 着地時の攻撃に加え、衝撃波で六方向に追撃
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

## 移動
# アニメーション再生 (長さ：80tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/3.1.play_move_animation
# 移動
    execute if score @s 9G.AnimationTimer matches 1..4 at @s positioned ^0.14 ^ ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 5..8 at @s positioned ^0.02 ^ ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 21..50 at @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~
    execute if score @s 9G.AnimationTimer matches 51 at @s facing entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9G.AnimationTimer matches 51..60 at @s positioned ^ ^0.7 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 73..82 at @s positioned ^ ^-0.7 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9G.AnimationTimer matches 51 if entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/4.calc_vector_0
        execute if score @s 9G.AnimationTimer matches 51..82 at @s run function asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
    execute if score @s 9G.AnimationTimer matches 117..122 at @s positioned ^ ^0.05 ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 138..156 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
# 演出
    execute if score @s 9G.AnimationTimer matches 51..82 run particle firework ~ ~1 ~ 0 0 0 0.1 2

## 攻撃
# アニメーション再生 (長さ：75tick)
    execute if score @s 9G.AnimationTimer matches 81 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/3.2.play_attack_animation
# 演出
    execute if score @s 9G.AnimationTimer matches 87..90 at @s run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.4.particle_line_main
# ダメージ
    execute if score @s 9G.AnimationTimer matches 85 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.1.damage_slash
    execute if score @s 9G.AnimationTimer matches 100 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.2.damage_burst

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 120 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 140 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 157.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/2.end
