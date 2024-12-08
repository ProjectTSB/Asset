#> asset:mob/0373.gold_coffin/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/373/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 一定時間で消滅
    execute if entity @s[scores={General.Mob.Tick=200..}] run kill @s
