#> asset:mob/0437.lawless_iron_doll/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/437/hurt

# 演出
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:block.note_block.bass hostile @a ~ ~ ~ 1 0.5

# ヘルスチェック
    execute if entity @s[scores={C5.Phase=1}] run function asset:mob/0437.lawless_iron_doll/hurt/health_check

# Super!
    function asset:mob/super.hurt
