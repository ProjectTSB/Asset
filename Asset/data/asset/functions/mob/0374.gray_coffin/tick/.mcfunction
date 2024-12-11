#> asset:mob/0374.gray_coffin/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/374/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# ﾊﾟｯｶｰﾝ
    execute if entity @s[scores={General.Mob.Tick=100}] on passengers run data modify entity @s item.tag.CustomModelData set value 20449

# 一定時間で消滅
    execute if entity @s[scores={General.Mob.Tick=200..}] run kill @s
