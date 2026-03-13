#> asset:mob/0369.prominence_spellbook/reflect/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/369/reflect

# 後退モードでなければsuper.reflect
    execute unless score @s A9.StepBack matches 0.. run function asset:mob/super.method

# もし後退モードで足元がブロックなら真下を向く
    execute if score @s A9.StepBack matches 0.. at @s unless block ~ ~0 ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ 90
