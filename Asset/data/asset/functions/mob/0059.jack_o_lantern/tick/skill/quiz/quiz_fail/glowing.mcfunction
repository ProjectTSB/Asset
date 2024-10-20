#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing
#
# 発光中の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

# 発光中の演出
    particle flame ~ ~1.8 ~ 0.6 0.6 0.6 0 2 normal @a
    particle dust 1 0.82 0.49 1 ~ ~1.8 ~ 0.6 0.6 0.6 0 2 normal @a
    execute if predicate lib:random_pass_per/5 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# 偽物のカウントの数だけ、偽物カボチャを巨大カボチャに変身させる
    execute if entity @s[scores={1N.FakeCount=1..}] as @e[type=husk,scores={MobID=224},distance=..30,sort=random,limit=1] at @s run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/summon_giant_pumpkin

# 残ったやつらを退場させる
    execute if entity @s[scores={1N.FakeCount=..0}] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/kill_all_fake
