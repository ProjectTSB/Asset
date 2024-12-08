#> asset:mob/0373.gold_coffin/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/373/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# ﾊﾟｯｶｰﾝ
    execute if entity @s[scores={General.Mob.Tick=100}] on passengers run data modify entity @s item.tag.CustomModelData set value 20447

# 一定時間で消滅
    execute if entity @s[scores={General.Mob.Tick=200..}] run kill @s
