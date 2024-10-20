#> asset:mob/0284.lexiel/death/animation
#
# 死亡アニメーションをするための再起部分
#
# @within function
#   asset:mob/0284.lexiel/death/
#   asset:mob/0284.lexiel/death/animation

# ファンクション
    execute as @e[type=armor_stand,tag=7W.ArmorStandDeath] at @s run function asset:mob/0284.lexiel/death/pose

# 再起
    execute if entity @e[type=armor_stand,tag=7W.ArmorStandDeath] run schedule function asset:mob/0284.lexiel/death/animation 1t
