#> asset:mob/0341.louvert/tick/animation/1_1_idle/end
#
# 終了処理
#
# @within function
#   asset:mob/0341.louvert/tick/animation/1_1_idle/
#   asset:mob/0341.louvert/tick/animation/10_1_counter/

scoreboard players set @s 9H.AnimationNum 0
scoreboard players set @s 9H.AnimationTick -1
scoreboard players set @s 9H.FalterCount 0
tag @s remove 9H.Guard.Counter