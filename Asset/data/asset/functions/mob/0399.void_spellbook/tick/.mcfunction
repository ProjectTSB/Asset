#> asset:mob/0399.void_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/399/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute at @s unless block ^ ^ ^0.5 #lib:no_collision/ run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision/ run tp @s ~ ~ ~ ~45 ~-45

# 範囲内ならホーミングじみた移動
    execute facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.025 ~ ~

# Timeを取る
    execute store result score $B3.Temp Temporary run time query gametime
    scoreboard players operation $B3.Temp Temporary %= $3 Const

# 地面に足を付けていないプレイヤを見つけろ！
    execute if score $B3.Temp Temporary matches 0 if entity @p[tag=!PlayerShouldInvulnerable,nbt={OnGround:0b},distance=..100] at @s run function asset:mob/0399.void_spellbook/ai/bullet/4.fire

# リセット
    scoreboard players reset $B3.Temp Temporary
