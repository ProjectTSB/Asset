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

# ハード専用ソウルボム設置
    execute unless entity @s[tag=9H.LastSpell] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0341.louvert/tick/projectile/soul_bomb_hard/

# 火炎陣Tick処理
    execute as @e[type=item_display,tag=9H.FireMagic,distance=..100] at @s run function asset:mob/0341.louvert/tick/projectile/fire_magic/1.tick

# メテオTick処理
    execute as @e[type=marker,tag=9H.Meteor,distance=..100] at @s run function asset:mob/0341.louvert/tick/projectile/meteor/1.tick

# 弾幕Tick処理
    execute as @e[type=item_display,tag=9H.Bullet,distance=..100] at @s run function asset:mob/0341.louvert/tick/projectile/bullet/1.tick

# ソウルクエイクTick処理
    execute as @e[type=marker,tag=9H.SoulQuake,distance=..100] at @s run function asset:mob/0341.louvert/tick/projectile/soul_quake/1.tick

# ソウルクエイクTick処理
    execute as @e[type=marker,tag=9H.SoulQuakeHard,distance=..100] at @s run function asset:mob/0341.louvert/tick/projectile/soul_quake_hard/1.tick

# ラストスペル中プレイヤーを引き寄せる
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[distance=12..15] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^0.4
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[distance=15..25] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^1.0
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[distance=25..40] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^1.5
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] as @a[distance=40..100] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes positioned as @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] rotated ~ 0 run tp @s ^ ^ ^2
    execute if entity @s[tag=9H.LastSpell] at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~-100 ~-100 ~-100 as @a[dx=199,dy=96,dz=199] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100,limit=1] eyes run tp @s ^ ^ ^2

# ラストスペル中、霊界トランスを使用したスペクテイターを殺す
    execute if entity @s[tag=9H.LastSpell] as @a[gamemode=spectator,scores={89.TickCount=1..},distance=..100] run function asset:mob/0341.louvert/tick/general/13.kill_spectator