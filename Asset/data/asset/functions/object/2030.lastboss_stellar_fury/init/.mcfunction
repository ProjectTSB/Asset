#> asset:object/2030.lastboss_stellar_fury/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2030/init

# 自身の属性をランダムで決定する
    execute store result score $Random Temporary run random value 0..2
    execute if score $Random Temporary matches 0 run tag @s add 2030.Fire
    execute if score $Random Temporary matches 1 run tag @s add 2030.Water
    execute if score $Random Temporary matches 2 run tag @s add 2030.Thunder
    scoreboard players reset $Random Temporary

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]

# Super!
    function asset:object/super.init
