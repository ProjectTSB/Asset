#> asset:mob/0393.labyria_first/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0393.labyria_first/_/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=AZ.ModelRoot,distance=..100,sort=nearest,limit=1] add AZ.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AZ.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s AZ.AnimationTick 1

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1.. at @e[type=item_display,tag=AZ.Root.This,distance=..100] run function asset:mob/0393.labyria_first/ai/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=AZ.Root.This,distance=..100] remove AZ.Root.This

# Projectile Tick処理
