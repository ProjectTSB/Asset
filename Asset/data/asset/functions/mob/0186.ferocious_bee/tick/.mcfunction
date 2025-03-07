#> asset:mob/0186.ferocious_bee/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/186/tick

# スコア関連
    scoreboard players add @s 56.MoveTime 1
    scoreboard players remove @s[scores={56.HurtTime=0..}] 56.HurtTime 1

# スコアによって速度が変わる
# スコアが180の時にプレイヤーが近くにいなければスコアをリセット
# 180..189の時に、近くのプレイヤーに軸合わせする
# 190以上で突進する
    execute if entity @s[scores={56.MoveTime=..179}] unless score @s 56.HurtTime matches 0.. facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~
    execute if entity @s[scores={56.MoveTime=180}] unless entity @p[gamemode=!spectator,distance=..20] run scoreboard players reset @s 56.MoveTime
    execute if entity @s[scores={56.MoveTime=180..189}] anchored eyes run tp @s ~ ~ ~ facing entity @p eyes
    execute if entity @s[scores={56.MoveTime=190..}] run tp @s ^ ^ ^1 ~ ~

# スコアリセット
    scoreboard players reset @s[scores={56.MoveTime=200..}] 56.MoveTime

# のけぞりから復帰
    data modify entity @s[scores={56.HurtTime=..0}] NoAI set value 1b

# 演出
    execute if entity @s[scores={56.MoveTime=190}] run playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[scores={56.MoveTime=190..}] run particle cloud ~ ~1.25 ~ 0.25 0.25 0.25 0 0

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={56.AttackCT=1..}] 56.AttackCT 1

# クールタイム中じゃないなら突進時に攻撃
    execute if entity @s[scores={56.MoveTime=190..}] unless score @s 56.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0186.ferocious_bee/tick/damage

# カベにぶつかった際の処理はない。壁は貫通するもの

# デスポーン処理
    execute unless entity @p[distance=..40] run function api:mob/remove
