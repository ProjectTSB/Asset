#> asset:object/1040.thelema_persuit_sword/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1040/recursive

# 一定スコアまではreturn
    execute if entity @s[scores={General.Object.Tick=..14}] run return fail

# 演出
    particle dust 1 1 100000000 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a
    execute if predicate lib:random_pass_per/15 run particle wax_off ~ ~0.5 ~ 0.05 0.05 0.05 0 1 normal @a
