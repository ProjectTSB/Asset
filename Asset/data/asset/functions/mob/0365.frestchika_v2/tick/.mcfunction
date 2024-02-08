#> asset:mob/0365.frestchika_v2/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0365.frestchika_v2/_/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=A5.ModelRoot,distance=..100,sort=nearest,limit=1] add A5.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=A5.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s A5.AnimationTick 1

# スキル選択
    execute if score @s A5.AnimationTick matches 0 run function asset:mob/0365.frestchika_v2/ai/general/4.select_skill

# アニメーション再生
    execute if score @s A5.AnimationTick matches 1.. at @e[type=item_display,tag=A5.Root.This,distance=..100] run function asset:mob/0365.frestchika_v2/ai/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=A5.Root.This,distance=..100] remove A5.Root.This

# ゼクスサンダー Tick処理
    execute as @e[type=marker,tag=A5.SechsThunder,distance=..100] at @s run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/3.tick

# プラズマ弾幕 Tick処理
    execute as @e[type=marker,tag=A5.PlasmaBullet,distance=..100] at @s run function asset:mob/0365.frestchika_v2/ai/projectile/bullet/3.tick