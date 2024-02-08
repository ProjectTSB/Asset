#> asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/
#
# 二連突進 移動
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/

# アニメーション再生
    execute if score @s A5.AnimationTick matches 1 as @e[type=item_display,tag=A5.Root.This,distance=..100] run function animated_java:frestchika_v2/animations/1_1_former_tackle_move/play

# 突進
    execute if score @s A5.AnimationTick matches 1..12 run function asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/move

# 演出
    execute if score @s A5.AnimationTick matches 1 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.7
    execute if score @s A5.AnimationTick matches 17 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.7

# 向き転換
    execute if score @s A5.AnimationTick matches 13 facing entity @p feet run function asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/move

# 突進
    execute if score @s A5.AnimationTick matches 17..28 run function asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/move

# 慣性
    execute if score @s A5.AnimationTick matches 29 positioned ^ ^ ^0.75 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 30 positioned ^ ^ ^0.5 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 31 positioned ^ ^ ^0.4 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 32 positioned ^ ^ ^0.3 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 33 positioned ^ ^ ^0.2 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 34 positioned ^ ^ ^0.1 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 35 positioned ^ ^ ^0.05 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    execute if score @s A5.AnimationTick matches 36 positioned ^ ^ ^0.025 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport

# アニメーション終了処理
    execute if score @s A5.AnimationTick matches 40 run scoreboard players set @s A5.AnimationTick -1