#> asset:mob/0115.jewel_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0115.jewel_bullet/tick/1.trigger

# スコア
    scoreboard players add @s 36.Tick 1

# 演出
    particle minecraft:dust 8 1 8 1.5 ~ ~1.2 ~ 0.25 0.25 0.25 1 3 normal @a
    playsound minecraft:block.amethyst_cluster.step hostile @a ~ ~ ~ 0.4 1 0

# 移動とヒット処理
    function asset:mob/0115.jewel_bullet/tick/3.move_recursive

# 再帰用スコアのリセット
    scoreboard players reset $RecursiveCount Temporary

# 消滅
    execute if entity @s[scores={36.Tick=32..}] run kill @s