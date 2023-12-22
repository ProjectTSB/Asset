#> asset:mob/0341.louvert/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0341.louvert/tick/1.trigger

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=9H.ModelRoot,sort=nearest,limit=1] add 9H.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=9H.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s 9H.AnimationTick 1

# スキル選択
    execute if score @s 9H.AnimationTick matches 0 run function asset:mob/0341.louvert/tick/3.skill_select

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1.. run function asset:mob/0341.louvert/tick/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=9H.Root.This,distance=..100] remove 9H.Root.This