#> asset:mob/0369.prominence_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/369/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~80

# 移動
    execute unless entity @s[scores={A9.StepBack=0..}] facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# 後退モード時は速度が下がる
# 幾何学の処理をしてかつ、後ろがブロックじゃないかつ、足元がブロックじゃなければ後退
    execute if entity @s[scores={A9.StepBack=0..}] facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s positioned ~ ~1.8 ~ if block ^ ^ ^-0.1 #lib:no_collision/ positioned ~ ~-1.8 ~ if block ~ ~0 ~ #lib:no_collision/ if block ~ ~1.5 ~ #lib:no_collision/ run tp @s ^ ^ ^-0.1 ~ ~

# もし後退モードで足元がブロックなら下を向いて脱出
    execute if entity @s[scores={A9.StepBack=0..}] at @s unless block ~ ~0 ~ #lib:no_collision/ run tp @s ~ ~0.3 ~ ~ 90

# プレイヤーが近くにいるとき、3秒間後退モードになる
    execute if entity @p[distance=..5] unless entity @s[scores={A9.StepBack=0..}] run scoreboard players set @s A9.StepBack 60

# 後退モード時、プレイヤーが近くにいなければ後退モードをやめる
    execute unless entity @p[distance=..10] unless entity @s[scores={A9.StepBack=0..}] run scoreboard players set @s A9.StepBack -1

# 後退モード動き用スコアを減らす
    execute if entity @s[scores={A9.StepBack=0..}] run scoreboard players remove @s A9.StepBack 1

# 後退モードじゃない時、カベにぶつかった際の処理
    execute unless entity @s[scores={A9.StepBack=0..}] unless block ^ ^ ^0.5 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45
    execute unless entity @s[scores={A9.StepBack=0..}] at @s unless block ^ ^ ^0.3 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0369.prominence_spellbook/tick/ready
