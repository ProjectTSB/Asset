#> asset:mob/0341.louvert/death/animation
#
# マーカーに対する処理
#
# @within function asset:mob/0341.louvert/death/schedule

# モデル紐づけ
    tag @e[type=item_display,tag=9H.ModelRoot,sort=nearest,limit=1] add 9H.Root.This

# スコア上昇
    execute unless score @s 9H.AnimationTick matches -2147483648..2147483647 run scoreboard players set @s 9H.AnimationTick 0
    scoreboard players add @s 9H.AnimationTick 1

# モデルをTPさせる
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run tp @s ^ ^-1 ^ ~ ~

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/13_1_ending/play

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 111 run function asset:mob/0341.louvert/death/kill

# 紐づけ終了
    tag @e[type=item_display,tag=9H.Root.This,distance=..100] remove 9H.Root.This

# スケジュール起動
    schedule function asset:mob/0341.louvert/death/schedule 1t
