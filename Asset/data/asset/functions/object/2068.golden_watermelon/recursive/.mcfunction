#> asset:object/2068.golden_watermelon/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2068/recursive

# 演出
    particle dust 1 0.941 0.141 1.3 ~ ~ ~ 0.4 0.4 0.4 0 1 normal @a

# 1段目爆発までちょっとずつ下を向く
    execute if entity @s[tag=!2068.1stHit] at @s run tp @s ~ ~ ~ ~ ~0.5
