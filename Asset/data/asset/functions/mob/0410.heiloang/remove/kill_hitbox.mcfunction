#> asset:mob/0410.heiloang/remove/kill_hitbox
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/0410.heiloang/remove/

# 当たり判定消去
    execute if entity @s[type=slime] run data merge entity @s {Size:0,Tags:["BE.Temp.Dummy"]}
    execute if entity @s[type=slime] run tp @s ~ ~100 ~
    kill @s[type=slime]
