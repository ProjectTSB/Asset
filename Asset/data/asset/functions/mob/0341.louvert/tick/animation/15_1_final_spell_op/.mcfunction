#> asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/
#
# ラストスペルの開始
#
# @within function asset:mob/0341.louvert/tick/animation/

# ラストスペルタグ
    execute if score @s 9H.AnimationTick matches 1 run tag @s add 9H.LastSpell

# ラストスペル中は無敵
    execute if score @s 9H.AnimationTick matches 1 run data modify entity @s Invulnerable set value 1b
    execute if score @s 9H.AnimationTick matches 1 run tag @s add Uninterferable

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_1_final_spell/play

# 中央にTPする
    execute if score @s 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/tp_center

# ディスプレイ召喚
    execute if score @s 9H.AnimationTick matches 29 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/1.summon

# ディスプレイ回転
    execute if score @s 9H.AnimationTick matches 30 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/2.rotate_1
    execute if score @s 9H.AnimationTick matches 60 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/3.rotate_2
    execute if score @s 9H.AnimationTick matches 90 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/4.rotate_3

# メテオ配置
    execute if score @s 9H.AnimationTick matches 57 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/meteor

# 火炎陣配置
    execute if score @s 9H.AnimationTick matches 66 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/magic

# 慣性
    execute if score @s 9H.AnimationTick matches 75 at @s positioned ^ ^ ^-0.5 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 76 at @s positioned ^ ^0.1 ^-0.6 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 77 at @s positioned ^ ^0.2 ^-0.7 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 78 at @s positioned ^ ^0.3 ^-0.8 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 79 at @s positioned ^ ^0.4 ^-0.9 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 80 at @s positioned ^ ^0.3 ^-1 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 81 at @s positioned ^ ^0.2 ^-1.2 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 82 at @s positioned ^ ^ ^-1.5 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 83 at @s positioned ^ ^-0.2 ^-1.2 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 84 at @s positioned ^ ^-0.3 ^-1 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 85 at @s positioned ^ ^-0.4 ^-0.9 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 86 at @s positioned ^ ^-0.3 ^-0.8 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 87 at @s positioned ^ ^-0.2 ^-0.7 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 88 at @s positioned ^ ^-0.1 ^-0.6 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 89 at @s positioned ^ ^ ^-0.5 run function asset:mob/0341.louvert/tick/general/1.teleport

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 101 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/end
