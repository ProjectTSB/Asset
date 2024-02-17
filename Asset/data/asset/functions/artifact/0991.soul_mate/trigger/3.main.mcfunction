#> asset:artifact/0991.soul_mate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0991.soul_mate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    #function asset:artifact/common/use/mainhand

# ソウルメイト呼び出し
    execute as @a[tag=RJ.SoulMate,distance=0.5..200] run tp @s ~ ~ ~

# 演出
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 1
    particle minecraft:dust 0.533 0.914 0.992 1.5 ~ ~0.7 ~ 0.5 0.5 0.5 0 50
    particle minecraft:dust 0.18 0.753 1 1.5 ~ ~0.7 ~ 0.5 0.5 0.5 0 50