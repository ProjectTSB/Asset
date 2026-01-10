#> asset:artifact/0987.ghost_step/trigger/5.bullet
#
#
#
# @within function asset:artifact/0987.ghost_step/trigger/4.schedule

# Age 加算
    scoreboard players add @s RF.Age 1

# 演出
    particle minecraft:dust 1.000 0.000 0.867 1 ~ ~ ~ 0.1 0.1 0.1 0 4 force
    execute if predicate lib:random_pass_per/30 run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0 1 force

# 進ませる
    execute if score @s RF.Age matches ..50 run tp @s ^ ^ ^0.25 ~ ~

# 壁に埋まってるかどうかで色を変える
    execute at @s if block ~ ~ ~ #lib:no_collision/ run data modify entity @s glow_color_override set value 5308671
    execute at @s unless block ~ ~ ~ #lib:no_collision/ run data modify entity @s glow_color_override set value 16724787

# 5s 経ったら kill
    execute if score @s RF.Age matches 100.. run kill @s

# TPBANエリアにいった場合
    execute at @s if predicate lib:is_ban_tp_area run particle smoke ~ ~ ~ 0 0 0 0.1 30
    execute at @s if predicate lib:is_ban_tp_area run kill @s

# 破壊不能ブロックをすり抜けようとした場合
    execute at @s if block ~ ~ ~ #lib:unbreakable run particle smoke ~ ~ ~ 0 0 0 0.1 30
    execute at @s if block ~ ~ ~ #lib:unbreakable run kill @s
