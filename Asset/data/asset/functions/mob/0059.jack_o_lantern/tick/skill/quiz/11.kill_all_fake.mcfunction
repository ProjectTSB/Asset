#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/11.kill_all_fake
#
# 全ての偽物を破壊する
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/8.glowing
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/10.end

# 演出
    execute at @e[type=husk,scores={MobID=224},distance=..50] run particle dust 1 0.6 0 2 ~ ~1.8 ~ 0.4 0.8 0.4 0 30 normal @a
    execute at @e[type=husk,scores={MobID=224},distance=..50] run particle dust 0.851 0 1 2 ~ ~1.8 ~ 0.4 0.8 0.4 0 30 normal @a
    execute at @e[type=husk,scores={MobID=224},distance=..50] run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# "確実に"奈落へ消し去る
    tp @e[type=husk,scores={MobID=224},distance=..50] ~ -100 ~
    kill @e[type=husk,scores={MobID=224}]
