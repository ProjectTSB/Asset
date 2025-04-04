#> asset:artifact/0724.oblivious_snow/trigger/fullset/main
#
# メイン処理
#
# @within function asset:artifact/0724.oblivious_snow/trigger/fullset/loop

# 演出
    execute if predicate lib:random_pass_per/20 run particle snowflake ~ ~4 ~ 1.8 0.25 1.8 0.0 2 normal @a[distance=..16]
    particle snowflake ~ ~0.3 ~ 0.5 0.1 0.5 0.05 1 normal @a[distance=..16]

# 周囲に鈍足を付与
    effect give @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,distance=..3.5] slowness 1 0 true

# 攻撃CD処理
    execute if entity @s[scores={K4.AttackCD=1..}] run scoreboard players remove @s K4.AttackCD 1
    execute if entity @s[scores={K4.AttackCD=..0}] run scoreboard players reset @s K4.AttackCD

# ループ処理
    schedule function asset:artifact/0724.oblivious_snow/trigger/fullset/loop 1t replace
