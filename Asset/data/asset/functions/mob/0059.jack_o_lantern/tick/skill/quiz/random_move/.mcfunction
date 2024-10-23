#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/
#
# 不規則に走り回る
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

# 演出
    execute at @a[distance=..30] run playsound block.note_block.snare hostile @p ~ ~ ~ 0.7 1 0

# 自身と偽物で実行
    function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/move
    execute as @e[type=husk,scores={MobID=224},distance=..40] at @s run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/move

