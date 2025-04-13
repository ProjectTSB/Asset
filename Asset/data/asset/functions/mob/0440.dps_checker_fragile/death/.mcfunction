#> asset:mob/0440.dps_checker_fragile/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/440/death

# 上をキル
    execute on passengers run kill @s

# 演出
    playsound minecraft:entity.armor_stand.break hostile @a ~ ~ ~ 1 0.8
    particle block oak_planks ~ ~1 ~ 0.2 0.5 0.2 1 20 force @a[distance=..32]
