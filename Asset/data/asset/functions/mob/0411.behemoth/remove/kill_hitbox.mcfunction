#> asset:mob/0411.behemoth/remove/kill_hitbox
#
# Mobの死亡時の処理
#
# @within function asset:mob/0411.behemoth/death/kill_hitbox

# 当たり判定消去
    execute if entity @s[type=slime] run data merge entity @s {Size:0,Tags:["BF.Temp.Dummy"]}
    execute if entity @s[type=slime] run tp @s ~ ~-100 ~
    kill @s[type=slime]
