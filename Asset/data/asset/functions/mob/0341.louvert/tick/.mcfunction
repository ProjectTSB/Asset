#> asset:mob/0341.louvert/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/341/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=9H.ModelRoot,sort=nearest,limit=1] add 9H.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=9H.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s 9H.AnimationTick 1

# スキル選択
    execute if score @s 9H.AnimationTick matches 0 run function asset:mob/0341.louvert/tick/skill_select

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1.. run function asset:mob/0341.louvert/tick/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=9H.Root.This,distance=..100] remove 9H.Root.This

# ラストスペル中プレイヤーを引き寄せる
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[tag=!PlayerShouldInvulnerable,distance=12..15] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^0.4
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[tag=!PlayerShouldInvulnerable,distance=15..25] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^1.0
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[tag=!PlayerShouldInvulnerable,distance=25..40] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^1.5
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[tag=!PlayerShouldInvulnerable,distance=40..100] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes positioned as @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] rotated ~ 0 run tp @s ^ ^ ^2
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~-100 ~-100 ~-100 as @a[tag=!PlayerShouldInvulnerable,dx=199,dy=96,dz=199] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^
