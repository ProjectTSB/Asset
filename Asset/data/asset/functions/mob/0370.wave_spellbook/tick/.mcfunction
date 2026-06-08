#> asset:mob/0370.wave_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/370/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0370.wave_spellbook/tick/ready
