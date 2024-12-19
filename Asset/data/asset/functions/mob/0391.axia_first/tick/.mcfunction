#> asset:mob/0391.axia_first/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/391/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=AV.ModelRoot,distance=..100,sort=nearest,limit=1] add AV.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AV.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s AV.AnimationTick 1

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1.. at @e[type=item_display,tag=AV.Root.This,distance=..100] run function asset:mob/0391.axia_first/ai/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=AV.Root.This,distance=..100] remove AV.Root.This

# Projectile Tick処理
    # 予告線 Tick処理
        execute at @s as @e[type=item_display,tag=AV.AnnounceLine,distance=..100] run function asset:mob/0391.axia_first/ai/projectile/announce_line/2.tick
