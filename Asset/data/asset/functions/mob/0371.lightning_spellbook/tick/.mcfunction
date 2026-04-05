#> asset:mob/0371.lightning_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/371/tick

#> Private
# @private
    #declare tag OnTop

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] at @s run function asset:mob/0371.lightning_spellbook/tick/ready

# ここより下は移動処理

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~80

# 下にプレイヤーがいるか判定
    execute positioned ~-1.5 ~ ~-1.5 if entity @p[dx=2,dy=-2.5,dz=2] at @s run tag @s add OnTop

# プレイヤーが下にいなければ移動
    execute if entity @s[tag=!OnTop] at @s facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# プレイヤーが下にいれば旋回する
    execute if entity @s[tag=OnTop] at @s if entity @s[tag=2D.LeftRotate] run tp @s ^ ^ ^0.2 ~-12 0
    execute if entity @s[tag=OnTop] at @s if entity @s[tag=!2D.LeftRotate] run tp @s ^ ^ ^0.2 ~12 0

# デバッグ用
    #say @s[tag=OnTop]

# 判定Tagを削除
    tag @s[tag=OnTop] remove OnTop

# プレイヤーが近くにいたら上に移動
    execute at @s if entity @p[distance=..4] if block ~ ~2.2 ~ #lib:no_collision/ run tp @s ~ ~0.2 ~

# 不定期に急加速
    execute if predicate lib:random_pass_per/1 at @s run tp @s ^ ^ ^0.5

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45
