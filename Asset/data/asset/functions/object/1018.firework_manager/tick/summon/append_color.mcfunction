#> asset:object/1018.firework_manager/tick/summon/append_color
#
#
#
# @within function
#   asset:object/1018.firework_manager/tick/summon/
#   asset:object/1018.firework_manager/tick/summon/append_color

# ランダムに色を指定する
    execute store result score $Random Temporary run random value 0..10

# 再帰の回数を計測するスコア
    scoreboard players add $RecursiveCount Temporary 1

# 白
    execute if score $Random Temporary matches 0 run data modify storage asset:temp Firework.Colors append value 16383998
# 赤
    execute if score $Random Temporary matches 1 run data modify storage asset:temp Firework.Colors append value 11546150
# 橙
    execute if score $Random Temporary matches 2 run data modify storage asset:temp Firework.Colors append value 16351261
# 黄
    execute if score $Random Temporary matches 3 run data modify storage asset:temp Firework.Colors append value 16701501
# 黄緑
    execute if score $Random Temporary matches 4 run data modify storage asset:temp Firework.Colors append value 8439583
# 水
    execute if score $Random Temporary matches 5 run data modify storage asset:temp Firework.Colors append value 1481884
# 空
    execute if score $Random Temporary matches 6 run data modify storage asset:temp Firework.Colors append value 3847130
# 青
    execute if score $Random Temporary matches 7 run data modify storage asset:temp Firework.Colors append value 3949738
# 紫
    execute if score $Random Temporary matches 8 run data modify storage asset:temp Firework.Colors append value 8991416
# 赤紫
    execute if score $Random Temporary matches 9 run data modify storage asset:temp Firework.Colors append value 13061821
# 桃
    execute if score $Random Temporary matches 10 run data modify storage asset:temp Firework.Colors append value 15961002

# $RecursiveCount = $ColorCountになるまで再帰
    execute if score $RecursiveCount Temporary < $ColorCount Temporary run function asset:object/1018.firework_manager/tick/summon/append_color
