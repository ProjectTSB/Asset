#> asset:mob/0154.ruin/tick/4.madness
#
#
#
# @within function asset:mob/0154.ruin/tick/2.tick

# 演出
    particle dust 0.255 0.039 0.039 1 ~ ~1 ~ 0.3 0.3 0.3 1 10

# 効果
# ノーマル以下(speed2)、ハード以上(speed3、ダメージ70%軽減)
    execute if predicate api:global_vars/difficulty/max/normal run effect give @s speed 1 1
    execute if predicate api:global_vars/difficulty/min/hard run effect give @s speed 1 2
    execute if predicate api:global_vars/difficulty/min/hard run effect give @s resistance 1 6

# ハード以上で鈍足を無効化
    execute if predicate api:global_vars/difficulty/min/hard run effect clear @s slowness

# 発狂して死ぬ
    execute if score @s 4A.MadnessTime matches 370.. run kill @s