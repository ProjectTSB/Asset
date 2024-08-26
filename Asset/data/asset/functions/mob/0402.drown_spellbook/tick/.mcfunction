#> asset:mob/0402.drown_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0402.drown_spellbook/_/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute at @s unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 範囲内ならホーミングじみた移動
    execute facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# スコア増やす
    scoreboard players add @s B6.Tick 1

# 時間が経過したら発射
    execute if score @s B6.Tick matches 120 run function asset:mob/0402.drown_spellbook/ai/bullet/0.summon

# 弾幕Tick処理
    scoreboard players operation $B6.Temp B6.UUID = @s MobUUID
    execute as @e[type=item_display,tag=B6.Bullet,distance=..100] if score @s B6.UUID = $B6.Temp B6.UUID at @s run function asset:mob/0402.drown_spellbook/ai/bullet/2.tick

# リセット
    scoreboard players reset $B6.Temp B6.UUID
