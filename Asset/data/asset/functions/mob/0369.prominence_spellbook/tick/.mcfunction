#> asset:mob/0369.prominence_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/369/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# 後退モード時は速度が下がる
# 幾何学の処理をしてかつ、後ろがブロックじゃないかつ、足元がブロックじゃなければ後退
    # execute if entity @s[scores={A9.StepBack=0..}] facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s positioned ~ ~1.8 ~ if block ^ ^ ^-0.1 #lib:no_collision positioned ~ ~-1.8 ~ if block ~ ~0 ~ #lib:no_collision if block ~ ~1.5 ~ #lib:no_collision run tp @s ^ ^ ^-0.1 ~ ~

# プレイヤーが近くにいるとき、3秒間後退モードになる
    execute if entity @p[distance=..5] unless entity @s[scores={A9.StepBack=0..}] run scoreboard players set @s A9.StepBack 60

# 後退モード時、プレイヤーが近くにいなければ後退モードをやめる
    execute unless entity @p[distance=..10] unless entity @s[scores={A9.StepBack=0..}] run scoreboard players set @s A9.StepBack -1

# 後退モード動き用スコアを減らす
    execute if entity @s[scores={A9.StepBack=0..}] run scoreboard players remove @s A9.StepBack 1

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0369.prominence_spellbook/tick/ready
