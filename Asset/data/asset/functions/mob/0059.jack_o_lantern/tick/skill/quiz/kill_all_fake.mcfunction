#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/kill_all_fake
#
# 全ての偽物を破壊する
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/end
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing

# 演出
    execute at @e[type=husk,scores={MobID=224},distance=..50] run particle dust 1 0.6 0 2 ~ ~1.8 ~ 0.4 0.8 0.4 0 30 normal @a
    execute at @e[type=husk,scores={MobID=224},distance=..50] run particle dust 0.851 0 1 2 ~ ~1.8 ~ 0.4 0.8 0.4 0 30 normal @a
    execute at @e[type=husk,scores={MobID=224},distance=..50] run playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.4 2 0

# "確実に"消し去る
    execute as @e[type=husk,scores={MobID=224},distance=..128] run function api:mob/remove
