#> asset:mob/0393.labyria_first/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/393/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=AX.ModelRoot,distance=..100,sort=nearest,limit=1] add AX.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AX.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s AX.AnimationTick 1

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1.. at @e[type=item_display,tag=AX.Root.This,distance=..100] run function asset:mob/0393.labyria_first/ai/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=AX.Root.This,distance=..100] remove AX.Root.This

# Projectile Tick処理
