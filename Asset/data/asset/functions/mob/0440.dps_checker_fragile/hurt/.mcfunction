#> asset:mob/0440.dps_checker_fragile/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/440/hurt

# 演出
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 0.7 1.5
    playsound minecraft:block.wood.break hostile @a ~ ~ ~ 1 0.8
