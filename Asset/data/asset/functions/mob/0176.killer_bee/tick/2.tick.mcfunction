#> asset:mob/0176.killer_bee/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0176.killer_bee/tick/1.trigger

# スコア関連
    scoreboard players add @s 4W.MoveTime 1
    scoreboard players remove @s[scores={4W.HurtTime=0..}] 4W.HurtTime 1

# スコアによって速度が変わる
# スコアが50の時にプレイヤーが近くにいなければスコアをリセット
# 50..69の時に、近くのプレイヤーに軸合わせする
# 70以上で突進する
    execute if entity @s[scores={4W.MoveTime=..49}] unless score @s 4W.HurtTime matches 0.. facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~
    execute if entity @s[scores={4W.MoveTime=50}] unless entity @p[gamemode=!spectator,distance=..20] run scoreboard players reset @s 4W.MoveTime
    execute if entity @s[scores={4W.MoveTime=50..69}] anchored eyes run tp @s ~ ~ ~ facing entity @p eyes
    execute if entity @s[scores={4W.MoveTime=70..}] run tp @s ^ ^ ^1 ~ ~

# スコアリセット
    scoreboard players reset @s[scores={4W.MoveTime=80..}] 4W.MoveTime

# のけぞりから復帰
    data modify entity @s[scores={4W.HurtTime=..0}] NoAI set value 1b

# 演出
    execute if entity @s[scores={4W.MoveTime=50}] run playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[scores={4W.MoveTime=70..}] run particle cloud ~ ~1.25 ~ 0.25 0.25 0.25 0 0

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={4W.AttackCT=1..}] 4W.AttackCT 1

# クールタイム中じゃないなら突進時に攻撃
    execute if entity @s[scores={4W.MoveTime=50..}] unless score @s 4W.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0176.killer_bee/tick/3.damage

# カベにぶつかった際の処理はない。壁は貫通するもの

# デスポーン処理
    execute unless entity @p[distance=..40] run function asset:mob/0176.killer_bee/tick/remove
