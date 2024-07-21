#> asset:mob/0369.prominence_spellbook/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0369.prominence_spellbook/_/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 移動
# 後退する時は速度が下がる
    execute unless entity @s[scores={A9.StepBack=0..}] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~
    execute if entity @s[scores={A9.StepBack=0..}] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^-0.1 ~ ~

# プレイヤーが近くにいるとき、3秒間後退する
    execute if entity @p[distance=..5] unless entity @s[scores={A9.StepBack=0..}] run scoreboard players set @s A9.StepBack 60

# 後ろに下がっている時、プレイヤーが近くにいなければ後退するのをやめる
    execute unless entity @p[distance=..10] unless entity @s[scores={A9.StepBack=0..}] run scoreboard players set @s A9.StepBack -1

# 後退する動き用スコアを減らす
    execute if entity @s[scores={A9.StepBack=0..}] run scoreboard players remove @s A9.StepBack 1

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.3 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# スコア
    scoreboard players add @s A9.Tick 1

# 攻撃
    execute if entity @s[scores={A9.Tick=0..}] run function asset:mob/0369.prominence_spellbook/tick/2.ready
