#> asset:mob/0401.darkness_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0401.darkness_spellbook/_/tick

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
    scoreboard players add @s B5.Tick 1

# 時間が経過したら発射
    execute if score @s B5.Tick matches 160 run function asset:mob/0401.darkness_spellbook/ai/bullet/0.summon

# 弾幕Tick処理
    scoreboard players operation $B5.Temp B5.UUID = @s MobUUID
    execute as @e[type=item_display,tag=B5.Bullet,distance=..100] if score @s B5.UUID = $B5.Temp B5.UUID at @s run function asset:mob/0401.darkness_spellbook/ai/bullet/2.tick

# リセット
    scoreboard players reset $B5.Temp B5.UUID
