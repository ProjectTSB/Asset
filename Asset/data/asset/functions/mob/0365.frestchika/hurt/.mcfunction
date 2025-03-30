#> asset:mob/0365.frestchika/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/365/hurt

# 演出
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1 0.7

# ヘルスチェック
    execute if entity @s[scores={A5.Phase=1}] run function asset:mob/0365.frestchika/hurt/health_check

# Super!
    function asset:mob/super.hurt
