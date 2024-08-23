#> asset:mob/0392.ecual_first/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0392.ecual_first/_/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=AW.ModelRoot,distance=..100,sort=nearest,limit=1] add AW.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AW.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s AW.AnimationTick 1

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1.. at @e[type=item_display,tag=AW.Root.This,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=AW.Root.This,distance=..100] remove AW.Root.This

# Projectile Tick処理
    # 設置水魔法 Tick処理
        execute as @e[type=item_display,tag=AW.WaterMagic,distance=..100] at @s run function asset:mob/0392.ecual_first/ai/projectile/water_magic/2.tick
