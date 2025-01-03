#> asset:mob/0412.tiamat/death/kill_hitbox
#
# Mobの死亡時の処理
#
# @within function asset:mob/0412.tiamat/death/

# 当たり判定消去
    execute if entity @s[type=slime] run data merge entity @s {Size:0,Tags:["BG.Temp.Dummy"]}
    execute if entity @s[type=slime] run tp @s ~ ~-100 ~
    kill @s[type=slime]
