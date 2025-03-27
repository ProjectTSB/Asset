#> asset:mob/1004.tultaria/tick/base_move/fake_inertia
#
# 嘘慣性
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/
#   asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/1.tick

# スコア減らす
    scoreboard players remove @s RW.FakeInertia 1

# パーティクル
    execute positioned ~ ~-0.2 ~ run particle end_rod ^ ^ ^ 0 0 0 0 0 force @a[distance=..30]

# それっぽい移動
    execute if entity @s[scores={RW.FakeInertia=13..}] positioned ^ ^ ^0.8 run tp @s ~ ~ ~
    execute if entity @s[scores={RW.FakeInertia=9..12}] positioned ^ ^ ^0.5 run tp @s ~ ~ ~
    execute if entity @s[scores={RW.FakeInertia=5..8}] positioned ^ ^ ^0.3 run tp @s ~ ~ ~
    execute if entity @s[scores={RW.FakeInertia=1..4}] positioned ^ ^ ^0.1 run tp @s ~ ~ ~

# スコアリセット
    scoreboard players reset @s[scores={RW.FakeInertia=0}] RW.FakeInertia
