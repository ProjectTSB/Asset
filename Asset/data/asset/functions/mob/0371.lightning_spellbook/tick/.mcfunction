#> asset:mob/0371.lightning_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/371/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] at @s run function asset:mob/0371.lightning_spellbook/tick/ready

# ここより下は移動処理

# 下にプレイヤーがいるか判定
    execute positioned ~-1.5 ~ ~-1.5 if entity @p[gamemode=!spectator,dx=2,dy=-2.5,dz=2] at @s run tag @s add 2D.OnTop

# super.tick
    function asset:mob/super.tick

# プレイヤーが近くにいる場合、真上を向いてmoveする
    execute if entity @p[gamemode=!spectator,distance=..4] rotated ~ -90 run function asset:mob/call.m {method:"move"}

# デバッグ用
    #say @s[tag=2D.OnTop]

# 判定Tagを削除
    tag @s[tag=2D.OnTop] remove 2D.OnTop
