#> asset:mob/0437.lawless_iron_doll/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/437/hurt

# 演出
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:block.note_block.bass hostile @a ~ ~ ~ 1 0.5

# 攻撃者が範囲外だったら臆病風を付与して反撃
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..256] positioned ~-64 ~5 ~-64 if entity @s[dx=127,dy=64,dz=127] at @s run function asset:mob/0437.lawless_iron_doll/hurt/chicken_out/give

# ヘルスチェック
    execute if entity @s[scores={C5.Phase=1}] run function asset:mob/0437.lawless_iron_doll/hurt/health_check

# Super!
    function asset:mob/super.hurt
