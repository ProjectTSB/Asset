#> asset:mob/0456.gargo_ex_machina/death/kill_hitbox
#
# Mobの死亡時の処理
#
# @within asset:mob/0456.gargo_ex_machina/death/
# @within asset:mob/0456.gargo_ex_machina/remove/

# 当たり判定消去
    execute if entity @s[type=slime] run data merge entity @s {Size:0,Tags:["CO.Temp.Dummy"]}
    execute if entity @s[type=slime] run tp @s ~ ~-100 ~
    kill @s[type=slime]
